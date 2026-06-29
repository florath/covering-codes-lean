import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_2(28,9)

This module formalizes the binary linear/syndrome construction behind
`q2-n28-r9-128-known-bound-lean-certificate-notes.md`.

The code is a binary linear kernel with `7` message coordinates and
`21` parity-check equations.  Coverage is certified by computing one
support-at-most-9 repair mask for each of the `2^21` syndromes during
native checking; no emitted codeword list or repair table is stored.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩
private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩
private abbrev p28_0 : Fin 28 := ⟨0, by decide⟩
private abbrev p28_1 : Fin 28 := ⟨1, by decide⟩
private abbrev p28_2 : Fin 28 := ⟨2, by decide⟩
private abbrev p28_3 : Fin 28 := ⟨3, by decide⟩
private abbrev p28_4 : Fin 28 := ⟨4, by decide⟩
private abbrev p28_5 : Fin 28 := ⟨5, by decide⟩
private abbrev p28_6 : Fin 28 := ⟨6, by decide⟩
private abbrev p28_7 : Fin 28 := ⟨7, by decide⟩
private abbrev p28_8 : Fin 28 := ⟨8, by decide⟩
private abbrev p28_9 : Fin 28 := ⟨9, by decide⟩
private abbrev p28_10 : Fin 28 := ⟨10, by decide⟩
private abbrev p28_11 : Fin 28 := ⟨11, by decide⟩
private abbrev p28_12 : Fin 28 := ⟨12, by decide⟩
private abbrev p28_13 : Fin 28 := ⟨13, by decide⟩
private abbrev p28_14 : Fin 28 := ⟨14, by decide⟩
private abbrev p28_15 : Fin 28 := ⟨15, by decide⟩
private abbrev p28_16 : Fin 28 := ⟨16, by decide⟩
private abbrev p28_17 : Fin 28 := ⟨17, by decide⟩
private abbrev p28_18 : Fin 28 := ⟨18, by decide⟩
private abbrev p28_19 : Fin 28 := ⟨19, by decide⟩
private abbrev p28_20 : Fin 28 := ⟨20, by decide⟩
private abbrev p28_21 : Fin 28 := ⟨21, by decide⟩
private abbrev p28_22 : Fin 28 := ⟨22, by decide⟩
private abbrev p28_23 : Fin 28 := ⟨23, by decide⟩
private abbrev p28_24 : Fin 28 := ⟨24, by decide⟩
private abbrev p28_25 : Fin 28 := ⟨25, by decide⟩
private abbrev p28_26 : Fin 28 := ⟨26, by decide⟩
private abbrev p28_27 : Fin 28 := ⟨27, by decide⟩

private def xor2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩

private def xor2List : List (Fin 2) → Fin 2
  | [] => f2_0
  | a :: rest => xor2 a (xor2List rest)

private theorem xor2_zero (a : Fin 2) : xor2 a f2_0 = a := by
  fin_cases a <;> native_decide

private def rowMessageParity0 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_2, msg f7_3]

private def rowMessageParity1 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_4, msg f7_6]

private def rowMessageParity2 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_2, msg f7_3, msg f7_5, msg f7_6]

private def rowMessageParity3 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_4, msg f7_6]

private def rowMessageParity4 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_3, msg f7_6]

private def rowMessageParity5 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_5, msg f7_6]

private def rowMessageParity6 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_1, msg f7_3, msg f7_4]

private def rowMessageParity7 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_3, msg f7_5]

private def rowMessageParity8 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_3, msg f7_4, msg f7_5, msg f7_6]

private def rowMessageParity9 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_1, msg f7_2, msg f7_6]

private def rowMessageParity10 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_1, msg f7_2, msg f7_3, msg f7_5, msg f7_6]

private def rowMessageParity11 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_4, msg f7_5]

private def rowMessageParity12 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_3, msg f7_4, msg f7_5, msg f7_6]

private def rowMessageParity13 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_4, msg f7_5, msg f7_6]

private def rowMessageParity14 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_1, msg f7_4, msg f7_6]

private def rowMessageParity15 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_3, msg f7_4, msg f7_5]

private def rowMessageParity16 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_2, msg f7_3, msg f7_4]

private def rowMessageParity17 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_2, msg f7_3, msg f7_5]

private def rowMessageParity18 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_0, msg f7_1, msg f7_6]

private def rowMessageParity19 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_1, msg f7_4, msg f7_5]

private def rowMessageParity20 (msg : QaryWord 2 7) : Fin 2 :=
  xor2List [msg f7_2, msg f7_5, msg f7_6]

private def rowParity0 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_5, w p28_0, w p28_2, w p28_3]

private def rowParity1 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_8, w p28_0, w p28_4, w p28_7]

private def rowParity2 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_9, w p28_0, w p28_2, w p28_3, w p28_6, w p28_7]

private def rowParity3 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_10, w p28_0, w p28_1, w p28_2, w p28_4, w p28_7]

private def rowParity4 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_11, w p28_0, w p28_3, w p28_7]

private def rowParity5 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_12, w p28_0, w p28_1, w p28_2, w p28_6, w p28_7]

private def rowParity6 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_13, w p28_1, w p28_3, w p28_4]

private def rowParity7 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_14, w p28_0, w p28_1, w p28_3, w p28_6]

private def rowParity8 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_15, w p28_0, w p28_1, w p28_2, w p28_3, w p28_4, w p28_6, w p28_7]

private def rowParity9 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_16, w p28_1, w p28_2, w p28_7]

private def rowParity10 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_17, w p28_1, w p28_2, w p28_3, w p28_6, w p28_7]

private def rowParity11 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_18, w p28_0, w p28_1, w p28_2, w p28_4, w p28_6]

private def rowParity12 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_19, w p28_3, w p28_4, w p28_6, w p28_7]

private def rowParity13 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_20, w p28_0, w p28_1, w p28_4, w p28_6, w p28_7]

private def rowParity14 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_21, w p28_1, w p28_4, w p28_7]

private def rowParity15 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_22, w p28_0, w p28_1, w p28_2, w p28_3, w p28_4, w p28_6]

private def rowParity16 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_23, w p28_0, w p28_1, w p28_2, w p28_3, w p28_4]

private def rowParity17 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_24, w p28_2, w p28_3, w p28_6]

private def rowParity18 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_25, w p28_0, w p28_1, w p28_7]

private def rowParity19 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_26, w p28_1, w p28_4, w p28_6]

private def rowParity20 (w : QaryWord 2 28) : Fin 2 :=
  xor2List [w p28_27, w p28_2, w p28_6, w p28_7]

private def IsLinearWord (w : QaryWord 2 28) : Prop :=
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
  rowParity19 w = f2_0 ∧
  rowParity20 w = f2_0

private instance (w : QaryWord 2 28) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

set_option maxRecDepth 20000 in
private theorem row0_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m2, m3] = f2_0) :
    xor2List [m0, m2, m3] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m4, m6] = f2_0) :
    xor2List [m0, m4, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m2, m3, m5, m6] = f2_0) :
    xor2List [m0, m2, m3, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row3_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m4, m6] = f2_0) :
    xor2List [m0, m1, m2, m4, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row4_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m3, m6] = f2_0) :
    xor2List [m0, m3, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row5_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m5, m6] = f2_0) :
    xor2List [m0, m1, m2, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row6_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m1, m3, m4] = f2_0) :
    xor2List [m1, m3, m4] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row7_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m3, m5] = f2_0) :
    xor2List [m0, m1, m3, m5] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row8_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m3, m4, m5, m6] = f2_0) :
    xor2List [m0, m1, m2, m3, m4, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row9_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m1, m2, m6] = f2_0) :
    xor2List [m1, m2, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row10_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m1, m2, m3, m5, m6] = f2_0) :
    xor2List [m1, m2, m3, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row11_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m4, m5] = f2_0) :
    xor2List [m0, m1, m2, m4, m5] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row12_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m3, m4, m5, m6] = f2_0) :
    xor2List [m3, m4, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row13_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m4, m5, m6] = f2_0) :
    xor2List [m0, m1, m4, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row14_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m1, m4, m6] = f2_0) :
    xor2List [m1, m4, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row15_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m3, m4, m5] = f2_0) :
    xor2List [m0, m1, m2, m3, m4, m5] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row16_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m2, m3, m4] = f2_0) :
    xor2List [m0, m1, m2, m3, m4] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row17_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m2, m3, m5] = f2_0) :
    xor2List [m2, m3, m5] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row18_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m0, m1, m6] = f2_0) :
    xor2List [m0, m1, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row19_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m1, m4, m5] = f2_0) :
    xor2List [m1, m4, m5] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row20_zero_solve (p : Fin 2) (m0 : Fin 2) (m1 : Fin 2) (m2 : Fin 2) (m3 : Fin 2) (m4 : Fin 2) (m5 : Fin 2) (m6 : Fin 2)
    (h : xor2List [p, m2, m5, m6] = f2_0) :
    xor2List [m2, m5, m6] = p := by
  revert p m0 m1 m2 m3 m4 m5 m6
  covering_decide

private def linearWord (msg : QaryWord 2 7) : QaryWord 2 28 :=
  fun i =>
    if i.val = 0 then msg f7_0
    else if i.val = 1 then msg f7_1
    else if i.val = 2 then msg f7_2
    else if i.val = 3 then msg f7_3
    else if i.val = 4 then msg f7_4
    else if i.val = 5 then rowMessageParity0 msg
    else if i.val = 6 then msg f7_5
    else if i.val = 7 then msg f7_6
    else if i.val = 8 then rowMessageParity1 msg
    else if i.val = 9 then rowMessageParity2 msg
    else if i.val = 10 then rowMessageParity3 msg
    else if i.val = 11 then rowMessageParity4 msg
    else if i.val = 12 then rowMessageParity5 msg
    else if i.val = 13 then rowMessageParity6 msg
    else if i.val = 14 then rowMessageParity7 msg
    else if i.val = 15 then rowMessageParity8 msg
    else if i.val = 16 then rowMessageParity9 msg
    else if i.val = 17 then rowMessageParity10 msg
    else if i.val = 18 then rowMessageParity11 msg
    else if i.val = 19 then rowMessageParity12 msg
    else if i.val = 20 then rowMessageParity13 msg
    else if i.val = 21 then rowMessageParity14 msg
    else if i.val = 22 then rowMessageParity15 msg
    else if i.val = 23 then rowMessageParity16 msg
    else if i.val = 24 then rowMessageParity17 msg
    else if i.val = 25 then rowMessageParity18 msg
    else if i.val = 26 then rowMessageParity19 msg
    else rowMessageParity20 msg

private def linearMsg (w : QaryWord 2 28) : QaryWord 2 7 := fun i =>
    if i.val = 0 then w p28_0
    else if i.val = 1 then w p28_1
    else if i.val = 2 then w p28_2
    else if i.val = 3 then w p28_3
    else if i.val = 4 then w p28_4
    else if i.val = 5 then w p28_6
    else w p28_7

private theorem linearWord_linearMsg_eq_of_isLinear (w : QaryWord 2 28)
    (h : IsLinearWord w) : linearWord (linearMsg w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20⟩
  have hw0 := row0_zero_solve (w p28_5) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity0] using h0)
  have hw1 := row1_zero_solve (w p28_8) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity1] using h1)
  have hw2 := row2_zero_solve (w p28_9) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity2] using h2)
  have hw3 := row3_zero_solve (w p28_10) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity3] using h3)
  have hw4 := row4_zero_solve (w p28_11) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity4] using h4)
  have hw5 := row5_zero_solve (w p28_12) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity5] using h5)
  have hw6 := row6_zero_solve (w p28_13) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity6] using h6)
  have hw7 := row7_zero_solve (w p28_14) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity7] using h7)
  have hw8 := row8_zero_solve (w p28_15) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity8] using h8)
  have hw9 := row9_zero_solve (w p28_16) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity9] using h9)
  have hw10 := row10_zero_solve (w p28_17) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity10] using h10)
  have hw11 := row11_zero_solve (w p28_18) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity11] using h11)
  have hw12 := row12_zero_solve (w p28_19) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity12] using h12)
  have hw13 := row13_zero_solve (w p28_20) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity13] using h13)
  have hw14 := row14_zero_solve (w p28_21) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity14] using h14)
  have hw15 := row15_zero_solve (w p28_22) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity15] using h15)
  have hw16 := row16_zero_solve (w p28_23) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity16] using h16)
  have hw17 := row17_zero_solve (w p28_24) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity17] using h17)
  have hw18 := row18_zero_solve (w p28_25) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity18] using h18)
  have hw19 := row19_zero_solve (w p28_26) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity19] using h19)
  have hw20 := row20_zero_solve (w p28_27) (w p28_0) (w p28_1) (w p28_2) (w p28_3) (w p28_4) (w p28_6) (w p28_7) (by
    simpa [rowParity20] using h20)
  simp [p28_0, p28_1, p28_2, p28_3, p28_4, p28_5, p28_6, p28_7, p28_8, p28_9, p28_10, p28_11, p28_12, p28_13, p28_14, p28_15, p28_16, p28_17, p28_18, p28_19, p28_20, p28_21, p28_22, p28_23, p28_24, p28_25, p28_26, p28_27] at hw0 hw1 hw2 hw3 hw4 hw5 hw6 hw7 hw8 hw9 hw10 hw11 hw12 hw13 hw14 hw15 hw16 hw17 hw18 hw19 hw20
  funext i
  fin_cases i <;>
    simp [linearWord, linearMsg, rowMessageParity0, rowMessageParity1, rowMessageParity2, rowMessageParity3, rowMessageParity4, rowMessageParity5, rowMessageParity6, rowMessageParity7, rowMessageParity8, rowMessageParity9, rowMessageParity10, rowMessageParity11, rowMessageParity12, rowMessageParity13, rowMessageParity14, rowMessageParity15, rowMessageParity16, rowMessageParity17, rowMessageParity18, rowMessageParity19, rowMessageParity20, p28_0, p28_1, p28_2, p28_3, p28_4, p28_5, p28_6, p28_7, p28_8, p28_9, p28_10, p28_11, p28_12, p28_13, p28_14, p28_15, p28_16, p28_17, p28_18, p28_19, p28_20, p28_21, p28_22, p28_23, p28_24, p28_25, p28_26, p28_27, hw0, hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10, hw11, hw12, hw13, hw14, hw15, hw16, hw17, hw18, hw19, hw20]

private def linearCode (_ : Unit) : Finset (QaryWord 2 28) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    (linearCode ()) ⊆ (Finset.univ : Finset (QaryWord 2 7)).image linearWord := by
  intro w hw
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and] at hw
  exact Finset.mem_image.mpr ⟨linearMsg w, Finset.mem_univ _,
    linearWord_linearMsg_eq_of_isLinear w hw⟩

private theorem linearCode_card : (linearCode ()).card <= 128 := by
  calc
    (linearCode ()).card <= ((Finset.univ : Finset (QaryWord 2 7)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 2 7)).card := Finset.card_image_le
    _ = 128 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

private def syndromeCount : Nat := 2097152
private def wordMaskLimit : Nat := 268435456
private def invalidRepairMask : Nat := wordMaskLimit

private def packSyndrome (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) (p20 : Fin 2) : Fin syndromeCount :=
  ⟨p0.val + 2 * p1.val + 4 * p2.val + 8 * p3.val + 16 * p4.val + 32 * p5.val + 64 * p6.val + 128 * p7.val + 256 * p8.val + 512 * p9.val + 1024 * p10.val + 2048 * p11.val + 4096 * p12.val + 8192 * p13.val + 16384 * p14.val + 32768 * p15.val + 65536 * p16.val + 131072 * p17.val + 262144 * p18.val + 524288 * p19.val + 1048576 * p20.val, by
    norm_num [syndromeCount]
    omega⟩

private def syndromeIndex (w : QaryWord 2 28) : Fin syndromeCount :=
  packSyndrome (rowParity0 w) (rowParity1 w) (rowParity2 w) (rowParity3 w) (rowParity4 w) (rowParity5 w) (rowParity6 w) (rowParity7 w) (rowParity8 w) (rowParity9 w) (rowParity10 w) (rowParity11 w) (rowParity12 w) (rowParity13 w) (rowParity14 w) (rowParity15 w) (rowParity16 w) (rowParity17 w) (rowParity18 w) (rowParity19 w) (rowParity20 w)

private theorem packSyndrome_inj (a0 : Fin 2) (a1 : Fin 2) (a2 : Fin 2) (a3 : Fin 2) (a4 : Fin 2) (a5 : Fin 2) (a6 : Fin 2) (a7 : Fin 2) (a8 : Fin 2) (a9 : Fin 2) (a10 : Fin 2) (a11 : Fin 2) (a12 : Fin 2) (a13 : Fin 2) (a14 : Fin 2) (a15 : Fin 2) (a16 : Fin 2) (a17 : Fin 2) (a18 : Fin 2) (a19 : Fin 2) (a20 : Fin 2) (b0 : Fin 2) (b1 : Fin 2) (b2 : Fin 2) (b3 : Fin 2) (b4 : Fin 2) (b5 : Fin 2) (b6 : Fin 2) (b7 : Fin 2) (b8 : Fin 2) (b9 : Fin 2) (b10 : Fin 2) (b11 : Fin 2) (b12 : Fin 2) (b13 : Fin 2) (b14 : Fin 2) (b15 : Fin 2) (b16 : Fin 2) (b17 : Fin 2) (b18 : Fin 2) (b19 : Fin 2) (b20 : Fin 2)
    (h : packSyndrome a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 = packSyndrome b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20) :
    a0 = b0 ∧
  a1 = b1 ∧
  a2 = b2 ∧
  a3 = b3 ∧
  a4 = b4 ∧
  a5 = b5 ∧
  a6 = b6 ∧
  a7 = b7 ∧
  a8 = b8 ∧
  a9 = b9 ∧
  a10 = b10 ∧
  a11 = b11 ∧
  a12 = b12 ∧
  a13 = b13 ∧
  a14 = b14 ∧
  a15 = b15 ∧
  a16 = b16 ∧
  a17 = b17 ∧
  a18 = b18 ∧
  a19 = b19 ∧
  a20 = b20 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome, syndromeCount] at hv
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
  have h11 : a11.val = b11.val := by omega
  have h12 : a12.val = b12.val := by omega
  have h13 : a13.val = b13.val := by omega
  have h14 : a14.val = b14.val := by omega
  have h15 : a15.val = b15.val := by omega
  have h16 : a16.val = b16.val := by omega
  have h17 : a17.val = b17.val := by omega
  have h18 : a18.val = b18.val := by omega
  have h19 : a19.val = b19.val := by omega
  have h20 : a20.val = b20.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2, Fin.ext h3, Fin.ext h4, Fin.ext h5, Fin.ext h6, Fin.ext h7, Fin.ext h8, Fin.ext h9, Fin.ext h10, Fin.ext h11, Fin.ext h12, Fin.ext h13, Fin.ext h14, Fin.ext h15, Fin.ext h16, Fin.ext h17, Fin.ext h18, Fin.ext h19, Fin.ext h20⟩

private def caseColumns : Array Nat :=
  #[371135, 913384, 1281837, 234965, 653642, 1, 1752484, 1341246, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576]

private def maskSupport (mask : Nat) : Finset (Fin 28) :=
  Finset.univ.filter (fun i : Fin 28 => Nat.testBit mask i.val)

private def maskWeight (mask : Nat) : Nat :=
  (maskSupport mask).card

private def maskWord (mask : Nat) : QaryWord 2 28 := fun i =>
  if Nat.testBit mask i.val then f2_1 else f2_0

private def maskSyndrome (mask : Nat) : Nat :=
  (List.range 28).foldl
    (fun acc i => if Nat.testBit mask i then acc ^^^ (caseColumns.getD i 0) else acc)
    0

private partial def markSyndromeSums (start remaining syndrome mask : Nat) (table : Array Nat) : Array Nat :=
  let table := if table.getD syndrome invalidRepairMask = invalidRepairMask then table.set! syndrome mask else table
  if remaining = 0 then table else
    (List.range (28 - start)).foldl (fun table offset =>
      let i := start + offset
      markSyndromeSums (i + 1) (remaining - 1)
        (syndrome ^^^ (caseColumns.getD i 0)) (mask ^^^ (1 <<< i)) table) table

private def repairTable (_ : Unit) : Array Nat :=
  markSyndromeSums 0 9 0 0 (Array.replicate syndromeCount invalidRepairMask)

private def repairEntryPropWith (table : Array Nat) (idx : Fin syndromeCount) : Prop :=
  let mask := table.getD idx.val invalidRepairMask
  mask < wordMaskLimit ∧
    maskWeight mask <= 9 ∧
    syndromeIndex (maskWord mask) = idx

private instance repairEntryPropWith_decidable (table : Array Nat) (idx : Fin syndromeCount) :
    Decidable (repairEntryPropWith table idx) := by
  unfold repairEntryPropWith
  infer_instance

private def repairEntryOkWith (table : Array Nat) (idx : Nat) : Bool :=
  if hidx : idx < syndromeCount then decide (repairEntryPropWith table ⟨idx, hidx⟩) else false

private def repairTableOk (_ : Unit) : Bool :=
  let table := repairTable ()
  (List.range syndromeCount).all (repairEntryOkWith table)

set_option maxRecDepth 20000 in
private theorem repairTableOk_true : repairTableOk () = true := by
  native_decide

private theorem repairEntryProp_of_idx (idx : Fin syndromeCount) :
    repairEntryPropWith (repairTable ()) idx := by
  have hAll := repairTableOk_true
  have hAll' : ∀ x < syndromeCount, repairEntryOkWith (repairTable ()) x = true := by
    simpa [repairTableOk] using hAll
  have hEntry := hAll' idx.val idx.isLt
  simpa [repairEntryOkWith, idx.isLt] using hEntry

private def repairMask (idx : Fin syndromeCount) : Nat :=
  (repairTable ()).getD idx.val invalidRepairMask

private theorem repairMask_spec (idx : Fin syndromeCount) :
    maskWeight (repairMask idx) <= 9 ∧ syndromeIndex (maskWord (repairMask idx)) = idx := by
  have hEntry := repairEntryProp_of_idx idx
  rcases hEntry with ⟨_, hweight, hsyn⟩
  exact ⟨hweight, hsyn⟩

private def xorWord (x e : QaryWord 2 28) : QaryWord 2 28 := fun i => xor2 (x i) (e i)

set_option maxRecDepth 20000 in
private theorem row0_xor_zero_of_eq (x5 : Fin 2) (x0 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (e5 : Fin 2) (e0 : Fin 2) (e2 : Fin 2) (e3 : Fin 2)
    (h : xor2List [e5, e0, e2, e3] = xor2List [x5, x0, x2, x3]) :
    xor2List [xor2 x5 e5, xor2 x0 e0, xor2 x2 e2, xor2 x3 e3] = f2_0 := by
  revert x5 x0 x2 x3 e5 e0 e2 e3
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_xor_zero_of_eq (x8 : Fin 2) (x0 : Fin 2) (x4 : Fin 2) (x7 : Fin 2) (e8 : Fin 2) (e0 : Fin 2) (e4 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e8, e0, e4, e7] = xor2List [x8, x0, x4, x7]) :
    xor2List [xor2 x8 e8, xor2 x0 e0, xor2 x4 e4, xor2 x7 e7] = f2_0 := by
  revert x8 x0 x4 x7 e8 e0 e4 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_xor_zero_of_eq (x9 : Fin 2) (x0 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e9 : Fin 2) (e0 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e9, e0, e2, e3, e6, e7] = xor2List [x9, x0, x2, x3, x6, x7]) :
    xor2List [xor2 x9 e9, xor2 x0 e0, xor2 x2 e2, xor2 x3 e3, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x9 x0 x2 x3 x6 x7 e9 e0 e2 e3 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row3_xor_zero_of_eq (x10 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x4 : Fin 2) (x7 : Fin 2) (e10 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e4 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e10, e0, e1, e2, e4, e7] = xor2List [x10, x0, x1, x2, x4, x7]) :
    xor2List [xor2 x10 e10, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x4 e4, xor2 x7 e7] = f2_0 := by
  revert x10 x0 x1 x2 x4 x7 e10 e0 e1 e2 e4 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row4_xor_zero_of_eq (x11 : Fin 2) (x0 : Fin 2) (x3 : Fin 2) (x7 : Fin 2) (e11 : Fin 2) (e0 : Fin 2) (e3 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e11, e0, e3, e7] = xor2List [x11, x0, x3, x7]) :
    xor2List [xor2 x11 e11, xor2 x0 e0, xor2 x3 e3, xor2 x7 e7] = f2_0 := by
  revert x11 x0 x3 x7 e11 e0 e3 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row5_xor_zero_of_eq (x12 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e12 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e12, e0, e1, e2, e6, e7] = xor2List [x12, x0, x1, x2, x6, x7]) :
    xor2List [xor2 x12 e12, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x12 x0 x1 x2 x6 x7 e12 e0 e1 e2 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row6_xor_zero_of_eq (x13 : Fin 2) (x1 : Fin 2) (x3 : Fin 2) (x4 : Fin 2) (e13 : Fin 2) (e1 : Fin 2) (e3 : Fin 2) (e4 : Fin 2)
    (h : xor2List [e13, e1, e3, e4] = xor2List [x13, x1, x3, x4]) :
    xor2List [xor2 x13 e13, xor2 x1 e1, xor2 x3 e3, xor2 x4 e4] = f2_0 := by
  revert x13 x1 x3 x4 e13 e1 e3 e4
  covering_decide

set_option maxRecDepth 20000 in
private theorem row7_xor_zero_of_eq (x14 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x3 : Fin 2) (x6 : Fin 2) (e14 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e3 : Fin 2) (e6 : Fin 2)
    (h : xor2List [e14, e0, e1, e3, e6] = xor2List [x14, x0, x1, x3, x6]) :
    xor2List [xor2 x14 e14, xor2 x0 e0, xor2 x1 e1, xor2 x3 e3, xor2 x6 e6] = f2_0 := by
  revert x14 x0 x1 x3 x6 e14 e0 e1 e3 e6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row8_xor_zero_of_eq (x15 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e15 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e4 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e15, e0, e1, e2, e3, e4, e6, e7] = xor2List [x15, x0, x1, x2, x3, x4, x6, x7]) :
    xor2List [xor2 x15 e15, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x3 e3, xor2 x4 e4, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x15 x0 x1 x2 x3 x4 x6 x7 e15 e0 e1 e2 e3 e4 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row9_xor_zero_of_eq (x16 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x7 : Fin 2) (e16 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e16, e1, e2, e7] = xor2List [x16, x1, x2, x7]) :
    xor2List [xor2 x16 e16, xor2 x1 e1, xor2 x2 e2, xor2 x7 e7] = f2_0 := by
  revert x16 x1 x2 x7 e16 e1 e2 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row10_xor_zero_of_eq (x17 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e17 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e17, e1, e2, e3, e6, e7] = xor2List [x17, x1, x2, x3, x6, x7]) :
    xor2List [xor2 x17 e17, xor2 x1 e1, xor2 x2 e2, xor2 x3 e3, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x17 x1 x2 x3 x6 x7 e17 e1 e2 e3 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row11_xor_zero_of_eq (x18 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (e18 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e4 : Fin 2) (e6 : Fin 2)
    (h : xor2List [e18, e0, e1, e2, e4, e6] = xor2List [x18, x0, x1, x2, x4, x6]) :
    xor2List [xor2 x18 e18, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x4 e4, xor2 x6 e6] = f2_0 := by
  revert x18 x0 x1 x2 x4 x6 e18 e0 e1 e2 e4 e6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row12_xor_zero_of_eq (x19 : Fin 2) (x3 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e19 : Fin 2) (e3 : Fin 2) (e4 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e19, e3, e4, e6, e7] = xor2List [x19, x3, x4, x6, x7]) :
    xor2List [xor2 x19 e19, xor2 x3 e3, xor2 x4 e4, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x19 x3 x4 x6 x7 e19 e3 e4 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row13_xor_zero_of_eq (x20 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e20 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e4 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e20, e0, e1, e4, e6, e7] = xor2List [x20, x0, x1, x4, x6, x7]) :
    xor2List [xor2 x20 e20, xor2 x0 e0, xor2 x1 e1, xor2 x4 e4, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x20 x0 x1 x4 x6 x7 e20 e0 e1 e4 e6 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row14_xor_zero_of_eq (x21 : Fin 2) (x1 : Fin 2) (x4 : Fin 2) (x7 : Fin 2) (e21 : Fin 2) (e1 : Fin 2) (e4 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e21, e1, e4, e7] = xor2List [x21, x1, x4, x7]) :
    xor2List [xor2 x21 e21, xor2 x1 e1, xor2 x4 e4, xor2 x7 e7] = f2_0 := by
  revert x21 x1 x4 x7 e21 e1 e4 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row15_xor_zero_of_eq (x22 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (e22 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e4 : Fin 2) (e6 : Fin 2)
    (h : xor2List [e22, e0, e1, e2, e3, e4, e6] = xor2List [x22, x0, x1, x2, x3, x4, x6]) :
    xor2List [xor2 x22 e22, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x3 e3, xor2 x4 e4, xor2 x6 e6] = f2_0 := by
  revert x22 x0 x1 x2 x3 x4 x6 e22 e0 e1 e2 e3 e4 e6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row16_xor_zero_of_eq (x23 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x4 : Fin 2) (e23 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e4 : Fin 2)
    (h : xor2List [e23, e0, e1, e2, e3, e4] = xor2List [x23, x0, x1, x2, x3, x4]) :
    xor2List [xor2 x23 e23, xor2 x0 e0, xor2 x1 e1, xor2 x2 e2, xor2 x3 e3, xor2 x4 e4] = f2_0 := by
  revert x23 x0 x1 x2 x3 x4 e23 e0 e1 e2 e3 e4
  covering_decide

set_option maxRecDepth 20000 in
private theorem row17_xor_zero_of_eq (x24 : Fin 2) (x2 : Fin 2) (x3 : Fin 2) (x6 : Fin 2) (e24 : Fin 2) (e2 : Fin 2) (e3 : Fin 2) (e6 : Fin 2)
    (h : xor2List [e24, e2, e3, e6] = xor2List [x24, x2, x3, x6]) :
    xor2List [xor2 x24 e24, xor2 x2 e2, xor2 x3 e3, xor2 x6 e6] = f2_0 := by
  revert x24 x2 x3 x6 e24 e2 e3 e6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row18_xor_zero_of_eq (x25 : Fin 2) (x0 : Fin 2) (x1 : Fin 2) (x7 : Fin 2) (e25 : Fin 2) (e0 : Fin 2) (e1 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e25, e0, e1, e7] = xor2List [x25, x0, x1, x7]) :
    xor2List [xor2 x25 e25, xor2 x0 e0, xor2 x1 e1, xor2 x7 e7] = f2_0 := by
  revert x25 x0 x1 x7 e25 e0 e1 e7
  covering_decide

set_option maxRecDepth 20000 in
private theorem row19_xor_zero_of_eq (x26 : Fin 2) (x1 : Fin 2) (x4 : Fin 2) (x6 : Fin 2) (e26 : Fin 2) (e1 : Fin 2) (e4 : Fin 2) (e6 : Fin 2)
    (h : xor2List [e26, e1, e4, e6] = xor2List [x26, x1, x4, x6]) :
    xor2List [xor2 x26 e26, xor2 x1 e1, xor2 x4 e4, xor2 x6 e6] = f2_0 := by
  revert x26 x1 x4 x6 e26 e1 e4 e6
  covering_decide

set_option maxRecDepth 20000 in
private theorem row20_xor_zero_of_eq (x27 : Fin 2) (x2 : Fin 2) (x6 : Fin 2) (x7 : Fin 2) (e27 : Fin 2) (e2 : Fin 2) (e6 : Fin 2) (e7 : Fin 2)
    (h : xor2List [e27, e2, e6, e7] = xor2List [x27, x2, x6, x7]) :
    xor2List [xor2 x27 e27, xor2 x2 e2, xor2 x6 e6, xor2 x7 e7] = f2_0 := by
  revert x27 x2 x6 x7 e27 e2 e6 e7
  covering_decide

private theorem xorWord_isLinear_of_matching (x e : QaryWord 2 28)
    (h0 : rowParity0 e = rowParity0 x) (h1 : rowParity1 e = rowParity1 x) (h2 : rowParity2 e = rowParity2 x) (h3 : rowParity3 e = rowParity3 x) (h4 : rowParity4 e = rowParity4 x) (h5 : rowParity5 e = rowParity5 x) (h6 : rowParity6 e = rowParity6 x) (h7 : rowParity7 e = rowParity7 x) (h8 : rowParity8 e = rowParity8 x) (h9 : rowParity9 e = rowParity9 x) (h10 : rowParity10 e = rowParity10 x) (h11 : rowParity11 e = rowParity11 x) (h12 : rowParity12 e = rowParity12 x) (h13 : rowParity13 e = rowParity13 x) (h14 : rowParity14 e = rowParity14 x) (h15 : rowParity15 e = rowParity15 x) (h16 : rowParity16 e = rowParity16 x) (h17 : rowParity17 e = rowParity17 x) (h18 : rowParity18 e = rowParity18 x) (h19 : rowParity19 e = rowParity19 x) (h20 : rowParity20 e = rowParity20 x) :
    IsLinearWord (xorWord x e) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simpa [rowParity0, xorWord] using
      row0_xor_zero_of_eq (x p28_5) (x p28_0) (x p28_2) (x p28_3) (e p28_5) (e p28_0) (e p28_2) (e p28_3) (by simpa [rowParity0] using h0)
  · simpa [rowParity1, xorWord] using
      row1_xor_zero_of_eq (x p28_8) (x p28_0) (x p28_4) (x p28_7) (e p28_8) (e p28_0) (e p28_4) (e p28_7) (by simpa [rowParity1] using h1)
  · simpa [rowParity2, xorWord] using
      row2_xor_zero_of_eq (x p28_9) (x p28_0) (x p28_2) (x p28_3) (x p28_6) (x p28_7) (e p28_9) (e p28_0) (e p28_2) (e p28_3) (e p28_6) (e p28_7) (by simpa [rowParity2] using h2)
  · simpa [rowParity3, xorWord] using
      row3_xor_zero_of_eq (x p28_10) (x p28_0) (x p28_1) (x p28_2) (x p28_4) (x p28_7) (e p28_10) (e p28_0) (e p28_1) (e p28_2) (e p28_4) (e p28_7) (by simpa [rowParity3] using h3)
  · simpa [rowParity4, xorWord] using
      row4_xor_zero_of_eq (x p28_11) (x p28_0) (x p28_3) (x p28_7) (e p28_11) (e p28_0) (e p28_3) (e p28_7) (by simpa [rowParity4] using h4)
  · simpa [rowParity5, xorWord] using
      row5_xor_zero_of_eq (x p28_12) (x p28_0) (x p28_1) (x p28_2) (x p28_6) (x p28_7) (e p28_12) (e p28_0) (e p28_1) (e p28_2) (e p28_6) (e p28_7) (by simpa [rowParity5] using h5)
  · simpa [rowParity6, xorWord] using
      row6_xor_zero_of_eq (x p28_13) (x p28_1) (x p28_3) (x p28_4) (e p28_13) (e p28_1) (e p28_3) (e p28_4) (by simpa [rowParity6] using h6)
  · simpa [rowParity7, xorWord] using
      row7_xor_zero_of_eq (x p28_14) (x p28_0) (x p28_1) (x p28_3) (x p28_6) (e p28_14) (e p28_0) (e p28_1) (e p28_3) (e p28_6) (by simpa [rowParity7] using h7)
  · simpa [rowParity8, xorWord] using
      row8_xor_zero_of_eq (x p28_15) (x p28_0) (x p28_1) (x p28_2) (x p28_3) (x p28_4) (x p28_6) (x p28_7) (e p28_15) (e p28_0) (e p28_1) (e p28_2) (e p28_3) (e p28_4) (e p28_6) (e p28_7) (by simpa [rowParity8] using h8)
  · simpa [rowParity9, xorWord] using
      row9_xor_zero_of_eq (x p28_16) (x p28_1) (x p28_2) (x p28_7) (e p28_16) (e p28_1) (e p28_2) (e p28_7) (by simpa [rowParity9] using h9)
  · simpa [rowParity10, xorWord] using
      row10_xor_zero_of_eq (x p28_17) (x p28_1) (x p28_2) (x p28_3) (x p28_6) (x p28_7) (e p28_17) (e p28_1) (e p28_2) (e p28_3) (e p28_6) (e p28_7) (by simpa [rowParity10] using h10)
  · simpa [rowParity11, xorWord] using
      row11_xor_zero_of_eq (x p28_18) (x p28_0) (x p28_1) (x p28_2) (x p28_4) (x p28_6) (e p28_18) (e p28_0) (e p28_1) (e p28_2) (e p28_4) (e p28_6) (by simpa [rowParity11] using h11)
  · simpa [rowParity12, xorWord] using
      row12_xor_zero_of_eq (x p28_19) (x p28_3) (x p28_4) (x p28_6) (x p28_7) (e p28_19) (e p28_3) (e p28_4) (e p28_6) (e p28_7) (by simpa [rowParity12] using h12)
  · simpa [rowParity13, xorWord] using
      row13_xor_zero_of_eq (x p28_20) (x p28_0) (x p28_1) (x p28_4) (x p28_6) (x p28_7) (e p28_20) (e p28_0) (e p28_1) (e p28_4) (e p28_6) (e p28_7) (by simpa [rowParity13] using h13)
  · simpa [rowParity14, xorWord] using
      row14_xor_zero_of_eq (x p28_21) (x p28_1) (x p28_4) (x p28_7) (e p28_21) (e p28_1) (e p28_4) (e p28_7) (by simpa [rowParity14] using h14)
  · simpa [rowParity15, xorWord] using
      row15_xor_zero_of_eq (x p28_22) (x p28_0) (x p28_1) (x p28_2) (x p28_3) (x p28_4) (x p28_6) (e p28_22) (e p28_0) (e p28_1) (e p28_2) (e p28_3) (e p28_4) (e p28_6) (by simpa [rowParity15] using h15)
  · simpa [rowParity16, xorWord] using
      row16_xor_zero_of_eq (x p28_23) (x p28_0) (x p28_1) (x p28_2) (x p28_3) (x p28_4) (e p28_23) (e p28_0) (e p28_1) (e p28_2) (e p28_3) (e p28_4) (by simpa [rowParity16] using h16)
  · simpa [rowParity17, xorWord] using
      row17_xor_zero_of_eq (x p28_24) (x p28_2) (x p28_3) (x p28_6) (e p28_24) (e p28_2) (e p28_3) (e p28_6) (by simpa [rowParity17] using h17)
  · simpa [rowParity18, xorWord] using
      row18_xor_zero_of_eq (x p28_25) (x p28_0) (x p28_1) (x p28_7) (e p28_25) (e p28_0) (e p28_1) (e p28_7) (by simpa [rowParity18] using h18)
  · simpa [rowParity19, xorWord] using
      row19_xor_zero_of_eq (x p28_26) (x p28_1) (x p28_4) (x p28_6) (e p28_26) (e p28_1) (e p28_4) (e p28_6) (by simpa [rowParity19] using h19)
  · simpa [rowParity20, xorWord] using
      row20_xor_zero_of_eq (x p28_27) (x p28_2) (x p28_6) (x p28_7) (e p28_27) (e p28_2) (e p28_6) (e p28_7) (by simpa [rowParity20] using h20)

private theorem xorWord_dist_le_of_maskWeight (x : QaryWord 2 28) (mask : Nat) :
    hammingDist x (xorWord x (maskWord mask)) <= maskWeight mask := by
  have hsubset : (Finset.univ.filter fun i : Fin 28 => x i ≠ xorWord x (maskWord mask) i) ⊆ maskSupport mask := by
    intro i hi
    simp only [maskSupport, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hbit
    have heq : maskWord mask i = f2_0 := by
      simp [maskWord, hbit]
    have hx : xorWord x (maskWord mask) i = x i := by
      unfold xorWord
      rw [heq]
      exact xor2_zero (x i)
    exact hi hx.symm
  simpa [hammingDist, maskWeight] using Finset.card_le_card hsubset

private theorem linearCode_covers : CoversFinset (linearCode ()) 9 := by
  intro x
  let idx := syndromeIndex x
  let mask := repairMask idx
  let e := maskWord mask
  let c := xorWord x e
  have hspec := repairMask_spec idx
  rcases hspec with ⟨hweight, hsyn⟩
  have hcomp := packSyndrome_inj (rowParity0 e) (rowParity1 e) (rowParity2 e) (rowParity3 e) (rowParity4 e) (rowParity5 e) (rowParity6 e) (rowParity7 e) (rowParity8 e) (rowParity9 e) (rowParity10 e) (rowParity11 e) (rowParity12 e) (rowParity13 e) (rowParity14 e) (rowParity15 e) (rowParity16 e) (rowParity17 e) (rowParity18 e) (rowParity19 e) (rowParity20 e) (rowParity0 x) (rowParity1 x) (rowParity2 x) (rowParity3 x) (rowParity4 x) (rowParity5 x) (rowParity6 x) (rowParity7 x) (rowParity8 x) (rowParity9 x) (rowParity10 x) (rowParity11 x) (rowParity12 x) (rowParity13 x) (rowParity14 x) (rowParity15 x) (rowParity16 x) (rowParity17 x) (rowParity18 x) (rowParity19 x) (rowParity20 x) (by
    simpa [e, idx, syndromeIndex] using hsyn)
  rcases hcomp with ⟨he0, he1, he2, he3, he4, he5, he6, he7, he8, he9, he10, he11, he12, he13, he14, he15, he16, he17, he18, he19, he20⟩
  have hlin : IsLinearWord c := by
    exact xorWord_isLinear_of_matching x e he0 he1 he2 he3 he4 he5 he6 he7 he8 he9 he10 he11 he12 he13 he14 he15 he16 he17 he18 he19 he20
  refine ⟨c, ?_, ?_⟩
  · simp [c, linearCode, hlin]
  · have hdist := xorWord_dist_le_of_maskWeight x mask
    simpa [c, e, mask] using hdist.trans hweight

def knownBoundQ2N28R9UpperName : String :=
  "lean_known_bounds_q2_n28_r9_binary_linear_syndrome"

theorem knownBoundQ2N28R9Cert : QaryKUpper 2 28 9 128 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩

def knownBoundQ2N28R9Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 28 ∧ r = 9 then 128 else trivialUpper q n r

theorem knownBoundQ2N28R9Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ2N28R9Upper q n r) := by
  by_cases h : q = 2 ∧ n = 28 ∧ r = 9
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ2N28R9Upper] using knownBoundQ2N28R9Cert
  · simpa [knownBoundQ2N28R9Upper, h] using trivialUpper_valid q n r

def knownBoundQ2N28R9UpperSource : UpperBoundSource where
  value := knownBoundQ2N28R9Upper
  trace := fun q n r =>
    .primitive knownBoundQ2N28R9UpperName (knownBoundQ2N28R9Upper_valid q n r)

end Database
end CoveringCodes
