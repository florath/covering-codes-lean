import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Small explicit upper-bound source

This source adds small explicit upper-bound seeds selected after comparing the
local database with the Keri non-mixed covering-code table.  The table is
used only for target selection; each code below is stored explicitly and checked
inside Lean.

* the binary repetition code witnessing `K_2(3,1) <= 2`;
* a ternary length-three radius-one code witnessing `K_3(3,1) <= 5`;
* a ternary length-four radius-one Hamming code witnessing `K_3(4,1) <= 9`;
* a binary length-five radius-one code witnessing `K_2(5,1) <= 7`;
* a binary length-six radius-one code witnessing `K_2(6,1) <= 12`;
* a binary length-seven radius-one Hamming code witnessing `K_2(7,1) <= 16`;
* a binary length-seven radius-two code witnessing `K_2(7,2) <= 7`;
* a binary length-eight radius-two code witnessing `K_2(8,2) <= 12`;
* a binary length-nine radius-three code witnessing `K_2(9,3) <= 7`;
* a binary length-six radius-two code witnessing `K_2(6,2) <= 4`;
* a ternary length-five radius-two code witnessing `K_3(5,2) <= 8`;
* a ternary length-six radius-two code witnessing `K_3(6,2) <= 17`;
* a ternary length-five radius-three code witnessing `K_3(5,3) <= 3`;
* a ternary length-six radius-three code witnessing `K_3(6,3) <= 6`;
* a quaternary length-three radius-one code witnessing `K_4(3,1) <= 8`.
* a quaternary length-four radius-one code witnessing `K_4(4,1) <= 24`.
* a quaternary length-four radius-two code witnessing `K_4(4,2) <= 7`.
* a quinary length-three radius-one code witnessing `K_5(3,1) <= 13`.
* a senary length-three radius-one code witnessing `K_6(3,1) <= 18`.
* a septenary length-three radius-one code witnessing `K_7(3,1) <= 25`.
* an octonary length-three radius-one code witnessing `K_8(3,1) <= 32`.
* a nonary length-three radius-one code witnessing `K_9(3,1) <= 41`.
* a denary length-three radius-one code witnessing `K_10(3,1) <= 50`.
* an elevenary length-three radius-one code witnessing `K_11(3,1) <= 61`.
* a duodenary length-three radius-one code witnessing `K_12(3,1) <= 72`.
* a thirteenary length-three radius-one code witnessing `K_13(3,1) <= 85`.
* a fourteenary length-three radius-one code witnessing `K_14(3,1) <= 98`.
* a fifteenary length-three radius-one code witnessing `K_15(3,1) <= 113`.
* a hexadecimal length-three radius-one code witnessing `K_16(3,1) <= 128`.
* a seventeenary length-three radius-one code witnessing `K_17(3,1) <= 145`.
* an eighteenary length-three radius-one code witnessing `K_18(3,1) <= 162`.

The generated database closure can then derive nearby entries such
as `K_2(4,1) <= 4` and `K_2(4,2) <= 2` using the existing length transforms.

The explicit seed code is checked by kernel reduction (`decide`), not native
computation.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private abbrev f5_0 : Fin 5 := ⟨0, by decide⟩
private abbrev f5_1 : Fin 5 := ⟨1, by decide⟩
private abbrev f5_2 : Fin 5 := ⟨2, by decide⟩
private abbrev f5_3 : Fin 5 := ⟨3, by decide⟩
private abbrev f5_4 : Fin 5 := ⟨4, by decide⟩

private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩

private abbrev f8_0 : Fin 8 := ⟨0, by decide⟩
private abbrev f8_1 : Fin 8 := ⟨1, by decide⟩
private abbrev f8_2 : Fin 8 := ⟨2, by decide⟩
private abbrev f8_3 : Fin 8 := ⟨3, by decide⟩
private abbrev f8_4 : Fin 8 := ⟨4, by decide⟩
private abbrev f8_5 : Fin 8 := ⟨5, by decide⟩
private abbrev f8_6 : Fin 8 := ⟨6, by decide⟩
private abbrev f8_7 : Fin 8 := ⟨7, by decide⟩

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f9_1 : Fin 9 := ⟨1, by decide⟩
private abbrev f9_2 : Fin 9 := ⟨2, by decide⟩
private abbrev f9_3 : Fin 9 := ⟨3, by decide⟩
private abbrev f9_4 : Fin 9 := ⟨4, by decide⟩
private abbrev f9_5 : Fin 9 := ⟨5, by decide⟩
private abbrev f9_6 : Fin 9 := ⟨6, by decide⟩
private abbrev f9_7 : Fin 9 := ⟨7, by decide⟩
private abbrev f9_8 : Fin 9 := ⟨8, by decide⟩

private abbrev f10_0 : Fin 10 := ⟨0, by decide⟩
private abbrev f10_1 : Fin 10 := ⟨1, by decide⟩
private abbrev f10_2 : Fin 10 := ⟨2, by decide⟩
private abbrev f10_3 : Fin 10 := ⟨3, by decide⟩
private abbrev f10_4 : Fin 10 := ⟨4, by decide⟩
private abbrev f10_5 : Fin 10 := ⟨5, by decide⟩
private abbrev f10_6 : Fin 10 := ⟨6, by decide⟩
private abbrev f10_7 : Fin 10 := ⟨7, by decide⟩
private abbrev f10_8 : Fin 10 := ⟨8, by decide⟩
private abbrev f10_9 : Fin 10 := ⟨9, by decide⟩

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

private abbrev f13_0 : Fin 13 := ⟨0, by decide⟩
private abbrev f13_1 : Fin 13 := ⟨1, by decide⟩
private abbrev f13_2 : Fin 13 := ⟨2, by decide⟩
private abbrev f13_3 : Fin 13 := ⟨3, by decide⟩
private abbrev f13_4 : Fin 13 := ⟨4, by decide⟩
private abbrev f13_5 : Fin 13 := ⟨5, by decide⟩
private abbrev f13_6 : Fin 13 := ⟨6, by decide⟩
private abbrev f13_7 : Fin 13 := ⟨7, by decide⟩
private abbrev f13_8 : Fin 13 := ⟨8, by decide⟩
private abbrev f13_9 : Fin 13 := ⟨9, by decide⟩
private abbrev f13_10 : Fin 13 := ⟨10, by decide⟩
private abbrev f13_11 : Fin 13 := ⟨11, by decide⟩
private abbrev f13_12 : Fin 13 := ⟨12, by decide⟩

private abbrev f14_0 : Fin 14 := ⟨0, by decide⟩
private abbrev f14_1 : Fin 14 := ⟨1, by decide⟩
private abbrev f14_2 : Fin 14 := ⟨2, by decide⟩
private abbrev f14_3 : Fin 14 := ⟨3, by decide⟩
private abbrev f14_4 : Fin 14 := ⟨4, by decide⟩
private abbrev f14_5 : Fin 14 := ⟨5, by decide⟩
private abbrev f14_6 : Fin 14 := ⟨6, by decide⟩
private abbrev f14_7 : Fin 14 := ⟨7, by decide⟩
private abbrev f14_8 : Fin 14 := ⟨8, by decide⟩
private abbrev f14_9 : Fin 14 := ⟨9, by decide⟩
private abbrev f14_10 : Fin 14 := ⟨10, by decide⟩
private abbrev f14_11 : Fin 14 := ⟨11, by decide⟩
private abbrev f14_12 : Fin 14 := ⟨12, by decide⟩
private abbrev f14_13 : Fin 14 := ⟨13, by decide⟩

private abbrev f15_0 : Fin 15 := ⟨0, by decide⟩
private abbrev f15_1 : Fin 15 := ⟨1, by decide⟩
private abbrev f15_2 : Fin 15 := ⟨2, by decide⟩
private abbrev f15_3 : Fin 15 := ⟨3, by decide⟩
private abbrev f15_4 : Fin 15 := ⟨4, by decide⟩
private abbrev f15_5 : Fin 15 := ⟨5, by decide⟩
private abbrev f15_6 : Fin 15 := ⟨6, by decide⟩
private abbrev f15_7 : Fin 15 := ⟨7, by decide⟩
private abbrev f15_8 : Fin 15 := ⟨8, by decide⟩
private abbrev f15_9 : Fin 15 := ⟨9, by decide⟩
private abbrev f15_10 : Fin 15 := ⟨10, by decide⟩
private abbrev f15_11 : Fin 15 := ⟨11, by decide⟩
private abbrev f15_12 : Fin 15 := ⟨12, by decide⟩
private abbrev f15_13 : Fin 15 := ⟨13, by decide⟩
private abbrev f15_14 : Fin 15 := ⟨14, by decide⟩

private abbrev f16_0 : Fin 16 := ⟨0, by decide⟩
private abbrev f16_1 : Fin 16 := ⟨1, by decide⟩
private abbrev f16_2 : Fin 16 := ⟨2, by decide⟩
private abbrev f16_3 : Fin 16 := ⟨3, by decide⟩
private abbrev f16_4 : Fin 16 := ⟨4, by decide⟩
private abbrev f16_5 : Fin 16 := ⟨5, by decide⟩
private abbrev f16_6 : Fin 16 := ⟨6, by decide⟩
private abbrev f16_7 : Fin 16 := ⟨7, by decide⟩
private abbrev f16_8 : Fin 16 := ⟨8, by decide⟩
private abbrev f16_9 : Fin 16 := ⟨9, by decide⟩
private abbrev f16_10 : Fin 16 := ⟨10, by decide⟩
private abbrev f16_11 : Fin 16 := ⟨11, by decide⟩
private abbrev f16_12 : Fin 16 := ⟨12, by decide⟩
private abbrev f16_13 : Fin 16 := ⟨13, by decide⟩
private abbrev f16_14 : Fin 16 := ⟨14, by decide⟩
private abbrev f16_15 : Fin 16 := ⟨15, by decide⟩

private abbrev f17_0 : Fin 17 := ⟨0, by decide⟩
private abbrev f17_1 : Fin 17 := ⟨1, by decide⟩
private abbrev f17_2 : Fin 17 := ⟨2, by decide⟩
private abbrev f17_3 : Fin 17 := ⟨3, by decide⟩
private abbrev f17_4 : Fin 17 := ⟨4, by decide⟩
private abbrev f17_5 : Fin 17 := ⟨5, by decide⟩
private abbrev f17_6 : Fin 17 := ⟨6, by decide⟩
private abbrev f17_7 : Fin 17 := ⟨7, by decide⟩
private abbrev f17_8 : Fin 17 := ⟨8, by decide⟩
private abbrev f17_9 : Fin 17 := ⟨9, by decide⟩
private abbrev f17_10 : Fin 17 := ⟨10, by decide⟩
private abbrev f17_11 : Fin 17 := ⟨11, by decide⟩
private abbrev f17_12 : Fin 17 := ⟨12, by decide⟩
private abbrev f17_13 : Fin 17 := ⟨13, by decide⟩
private abbrev f17_14 : Fin 17 := ⟨14, by decide⟩
private abbrev f17_15 : Fin 17 := ⟨15, by decide⟩
private abbrev f17_16 : Fin 17 := ⟨16, by decide⟩

private abbrev f18_0 : Fin 18 := ⟨0, by decide⟩
private abbrev f18_1 : Fin 18 := ⟨1, by decide⟩
private abbrev f18_2 : Fin 18 := ⟨2, by decide⟩
private abbrev f18_3 : Fin 18 := ⟨3, by decide⟩
private abbrev f18_4 : Fin 18 := ⟨4, by decide⟩
private abbrev f18_5 : Fin 18 := ⟨5, by decide⟩
private abbrev f18_6 : Fin 18 := ⟨6, by decide⟩
private abbrev f18_7 : Fin 18 := ⟨7, by decide⟩
private abbrev f18_8 : Fin 18 := ⟨8, by decide⟩
private abbrev f18_9 : Fin 18 := ⟨9, by decide⟩
private abbrev f18_10 : Fin 18 := ⟨10, by decide⟩
private abbrev f18_11 : Fin 18 := ⟨11, by decide⟩
private abbrev f18_12 : Fin 18 := ⟨12, by decide⟩
private abbrev f18_13 : Fin 18 := ⟨13, by decide⟩
private abbrev f18_14 : Fin 18 := ⟨14, by decide⟩
private abbrev f18_15 : Fin 18 := ⟨15, by decide⟩
private abbrev f18_16 : Fin 18 := ⟨16, by decide⟩
private abbrev f18_17 : Fin 18 := ⟨17, by decide⟩

private def binaryRepetition3Code : Finset (QaryWord 2 3) :=
  {![f2_0, f2_0, f2_0], ![f2_1, f2_1, f2_1]}

private theorem binaryRepetition3_card :
    binaryRepetition3Code.card ≤ 2 := by
  covering_decide

private theorem binaryRepetition3_covers :
    CoversFinset binaryRepetition3Code 1 := by
  show ∀ x : QaryWord 2 3,
    ∃ c : QaryWord 2 3, c ∈ binaryRepetition3Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryRepetition3UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryRepetition3Explicit : ExplicitQaryUpper 2 3 1 2 :=
  { code := binaryRepetition3Code
    card_le := binaryRepetition3_card
    covers := binaryRepetition3_covers }

def smallExplicitBinaryRepetition3Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 3 ∧ r = 1 then 2 else trivialUpper q n r

theorem smallExplicitBinaryRepetition3Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryRepetition3Upper q n r) := by
  by_cases h : q = 2 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryRepetition3Upper] using
      smallExplicitBinaryRepetition3Explicit.toUpper
  · simpa [smallExplicitBinaryRepetition3Upper, h] using trivialUpper_valid q n r

def smallExplicitBinaryRepetition3UpperSource : UpperBoundSource where
  value := smallExplicitBinaryRepetition3Upper
  trace := fun q n r =>
    .primitive smallExplicitBinaryRepetition3UpperName
      (smallExplicitBinaryRepetition3Upper_valid q n r)

private def ternary331Code : Finset (QaryWord 3 3) :=
  {![f3_0, f3_0, f3_0],
    ![f3_0, f3_1, f3_1],
    ![f3_1, f3_0, f3_1],
    ![f3_1, f3_1, f3_0],
    ![f3_2, f3_2, f3_2]}

private theorem ternary331_card :
    ternary331Code.card ≤ 5 := by
  covering_decide

private theorem ternary331_covers :
    CoversFinset ternary331Code 1 := by
  show ∀ x : QaryWord 3 3,
    ∃ c : QaryWord 3 3, c ∈ ternary331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitTernary331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernary331Explicit : ExplicitQaryUpper 3 3 1 5 :=
  { code := ternary331Code
    card_le := ternary331_card
    covers := ternary331_covers }

def smallExplicitTernary331Upper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 3 ∧ r = 1 then 5 else trivialUpper q n r

theorem smallExplicitTernary331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernary331Upper q n r) := by
  by_cases h : q = 3 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernary331Upper] using
      smallExplicitTernary331Explicit.toUpper
  · simpa [smallExplicitTernary331Upper, h] using trivialUpper_valid q n r

def smallExplicitTernary331UpperSource : UpperBoundSource where
  value := smallExplicitTernary331Upper
  trace := fun q n r =>
    .primitive smallExplicitTernary331UpperName
      (smallExplicitTernary331Upper_valid q n r)

private def ternaryHamming4Code : Finset (QaryWord 3 4) :=
  {![f3_0, f3_0, f3_0, f3_0],
    ![f3_0, f3_1, f3_1, f3_1],
    ![f3_0, f3_2, f3_2, f3_2],
    ![f3_1, f3_0, f3_1, f3_2],
    ![f3_1, f3_1, f3_2, f3_0],
    ![f3_1, f3_2, f3_0, f3_1],
    ![f3_2, f3_0, f3_2, f3_1],
    ![f3_2, f3_1, f3_0, f3_2],
    ![f3_2, f3_2, f3_1, f3_0]}

private theorem ternaryHamming4_card :
    ternaryHamming4Code.card ≤ 9 := by
  covering_decide

private theorem ternaryHamming4_covers :
    CoversFinset ternaryHamming4Code 1 := by
  show ∀ x : QaryWord 3 4,
    ∃ c : QaryWord 3 4, c ∈ ternaryHamming4Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitTernaryHamming4UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryHamming4Explicit : ExplicitQaryUpper 3 4 1 9 :=
  { code := ternaryHamming4Code
    card_le := ternaryHamming4_card
    covers := ternaryHamming4_covers }

def smallExplicitTernaryHamming4Upper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 4 ∧ r = 1 then 9 else trivialUpper q n r

theorem smallExplicitTernaryHamming4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryHamming4Upper q n r) := by
  by_cases h : q = 3 ∧ n = 4 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryHamming4Upper] using
      smallExplicitTernaryHamming4Explicit.toUpper
  · simpa [smallExplicitTernaryHamming4Upper, h] using trivialUpper_valid q n r

def smallExplicitTernaryHamming4UpperSource : UpperBoundSource where
  value := smallExplicitTernaryHamming4Upper
  trace := fun q n r =>
    .primitive smallExplicitTernaryHamming4UpperName
      (smallExplicitTernaryHamming4Upper_valid q n r)

private def binaryFiveRadiusOneCode : Finset (QaryWord 2 5) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_0, f2_1, f2_1, f2_1],
    ![f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_0, f2_0, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_1]}

private theorem binaryFiveRadiusOne_card :
    binaryFiveRadiusOneCode.card ≤ 7 := by
  covering_decide

private theorem binaryFiveRadiusOne_covers :
    CoversFinset binaryFiveRadiusOneCode 1 := by
  show ∀ x : QaryWord 2 5,
    ∃ c : QaryWord 2 5, c ∈ binaryFiveRadiusOneCode ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryFiveRadiusOneUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryFiveRadiusOneExplicit : ExplicitQaryUpper 2 5 1 7 :=
  { code := binaryFiveRadiusOneCode
    card_le := binaryFiveRadiusOne_card
    covers := binaryFiveRadiusOne_covers }

def smallExplicitBinaryFiveRadiusOneUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 5 ∧ r = 1 then 7 else trivialUpper q n r

theorem smallExplicitBinaryFiveRadiusOneUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryFiveRadiusOneUpper q n r) := by
  by_cases h : q = 2 ∧ n = 5 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryFiveRadiusOneUpper] using
      smallExplicitBinaryFiveRadiusOneExplicit.toUpper
  · simpa [smallExplicitBinaryFiveRadiusOneUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryFiveRadiusOneUpperSource : UpperBoundSource where
  value := smallExplicitBinaryFiveRadiusOneUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryFiveRadiusOneUpperName
      (smallExplicitBinaryFiveRadiusOneUpper_valid q n r)

private def binarySixRadiusOneCode : Finset (QaryWord 2 6) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_0, f2_1, f2_1, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_1]}

private theorem binarySixRadiusOne_card :
    binarySixRadiusOneCode.card ≤ 12 := by
  covering_decide

private theorem binarySixRadiusOne_covers :
    CoversFinset binarySixRadiusOneCode 1 := by
  show ∀ x : QaryWord 2 6,
    ∃ c : QaryWord 2 6, c ∈ binarySixRadiusOneCode ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinarySixRadiusOneUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySixRadiusOneExplicit : ExplicitQaryUpper 2 6 1 12 :=
  { code := binarySixRadiusOneCode
    card_le := binarySixRadiusOne_card
    covers := binarySixRadiusOne_covers }

def smallExplicitBinarySixRadiusOneUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 6 ∧ r = 1 then 12 else trivialUpper q n r

theorem smallExplicitBinarySixRadiusOneUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySixRadiusOneUpper q n r) := by
  by_cases h : q = 2 ∧ n = 6 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySixRadiusOneUpper] using
      smallExplicitBinarySixRadiusOneExplicit.toUpper
  · simpa [smallExplicitBinarySixRadiusOneUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySixRadiusOneUpperSource : UpperBoundSource where
  value := smallExplicitBinarySixRadiusOneUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySixRadiusOneUpperName
      (smallExplicitBinarySixRadiusOneUpper_valid q n r)

private def binaryHamming7Code : Finset (QaryWord 2 7) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_0, f2_1, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1, f2_1, f2_0],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_1, f2_1, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_1, f2_1],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_1, f2_1]}

private theorem binaryHamming7_card :
    binaryHamming7Code.card ≤ 16 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryHamming7_covers :
    CoversFinset binaryHamming7Code 1 := by
  show ∀ x : QaryWord 2 7,
    ∃ c : QaryWord 2 7, c ∈ binaryHamming7Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryHamming7UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryHamming7Explicit : ExplicitQaryUpper 2 7 1 16 :=
  { code := binaryHamming7Code
    card_le := binaryHamming7_card
    covers := binaryHamming7_covers }

def smallExplicitBinaryHamming7Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 7 ∧ r = 1 then 16 else trivialUpper q n r

theorem smallExplicitBinaryHamming7Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryHamming7Upper q n r) := by
  by_cases h : q = 2 ∧ n = 7 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryHamming7Upper] using
      smallExplicitBinaryHamming7Explicit.toUpper
  · simpa [smallExplicitBinaryHamming7Upper, h] using trivialUpper_valid q n r

def smallExplicitBinaryHamming7UpperSource : UpperBoundSource where
  value := smallExplicitBinaryHamming7Upper
  trace := fun q n r =>
    .primitive smallExplicitBinaryHamming7UpperName
      (smallExplicitBinaryHamming7Upper_valid q n r)

private def binarySevenRadiusTwoCode : Finset (QaryWord 2 7) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_0],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_1, f2_1]}

private theorem binarySevenRadiusTwo_card :
    binarySevenRadiusTwoCode.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binarySevenRadiusTwo_covers :
    CoversFinset binarySevenRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 7,
    ∃ c : QaryWord 2 7, c ∈ binarySevenRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinarySevenRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySevenRadiusTwoExplicit : ExplicitQaryUpper 2 7 2 7 :=
  { code := binarySevenRadiusTwoCode
    card_le := binarySevenRadiusTwo_card
    covers := binarySevenRadiusTwo_covers }

def smallExplicitBinarySevenRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 7 ∧ r = 2 then 7 else trivialUpper q n r

theorem smallExplicitBinarySevenRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySevenRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 7 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySevenRadiusTwoUpper] using
      smallExplicitBinarySevenRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinarySevenRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySevenRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinarySevenRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySevenRadiusTwoUpperName
      (smallExplicitBinarySevenRadiusTwoUpper_valid q n r)

private def binaryEightRadiusTwoCode : Finset (QaryWord 2 8) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1, f2_0],
    ![f2_0, f2_0, f2_1, f2_1, f2_1, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_0, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_1],
    ![f2_0, f2_1, f2_1, f2_0, f2_1, f2_1, f2_1, f2_1]}

private theorem binaryEightRadiusTwo_card :
    binaryEightRadiusTwoCode.card ≤ 12 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryEightRadiusTwo_covers :
    CoversFinset binaryEightRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 8,
    ∃ c : QaryWord 2 8, c ∈ binaryEightRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinaryEightRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryEightRadiusTwoExplicit : ExplicitQaryUpper 2 8 2 12 :=
  { code := binaryEightRadiusTwoCode
    card_le := binaryEightRadiusTwo_card
    covers := binaryEightRadiusTwo_covers }

def smallExplicitBinaryEightRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 8 ∧ r = 2 then 12 else trivialUpper q n r

theorem smallExplicitBinaryEightRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryEightRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 8 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryEightRadiusTwoUpper] using
      smallExplicitBinaryEightRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinaryEightRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryEightRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinaryEightRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryEightRadiusTwoUpperName
      (smallExplicitBinaryEightRadiusTwoUpper_valid q n r)

private def binaryNineRadiusThreeCode : Finset (QaryWord 2 9) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_1, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_1, f2_0, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_0, f2_1, f2_1]}

private theorem binaryNineRadiusThree_card :
    binaryNineRadiusThreeCode.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryNineRadiusThree_covers :
    CoversFinset binaryNineRadiusThreeCode 3 := by
  show ∀ x : QaryWord 2 9,
    ∃ c : QaryWord 2 9, c ∈ binaryNineRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitBinaryNineRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryNineRadiusThreeExplicit : ExplicitQaryUpper 2 9 3 7 :=
  { code := binaryNineRadiusThreeCode
    card_le := binaryNineRadiusThree_card
    covers := binaryNineRadiusThree_covers }

def smallExplicitBinaryNineRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 9 ∧ r = 3 then 7 else trivialUpper q n r

theorem smallExplicitBinaryNineRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryNineRadiusThreeUpper q n r) := by
  by_cases h : q = 2 ∧ n = 9 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryNineRadiusThreeUpper] using
      smallExplicitBinaryNineRadiusThreeExplicit.toUpper
  · simpa [smallExplicitBinaryNineRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryNineRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitBinaryNineRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryNineRadiusThreeUpperName
      (smallExplicitBinaryNineRadiusThreeUpper_valid q n r)

private def binarySixRadiusTwoCode : Finset (QaryWord 2 6) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_1, f2_1],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_1]}

private theorem binarySixRadiusTwo_card :
    binarySixRadiusTwoCode.card ≤ 4 := by
  covering_decide

private theorem binarySixRadiusTwo_covers :
    CoversFinset binarySixRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 6,
    ∃ c : QaryWord 2 6, c ∈ binarySixRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinarySixRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySixRadiusTwoExplicit : ExplicitQaryUpper 2 6 2 4 :=
  { code := binarySixRadiusTwoCode
    card_le := binarySixRadiusTwo_card
    covers := binarySixRadiusTwo_covers }

def smallExplicitBinarySixRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 6 ∧ r = 2 then 4 else trivialUpper q n r

theorem smallExplicitBinarySixRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySixRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 6 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySixRadiusTwoUpper] using
      smallExplicitBinarySixRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinarySixRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySixRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinarySixRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySixRadiusTwoUpperName
      (smallExplicitBinarySixRadiusTwoUpper_valid q n r)

private def ternaryFiveRadiusTwoCode : Finset (QaryWord 3 5) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_2, f3_0, f3_0, f3_1, f3_0],
    ![f3_1, f3_2, f3_1, f3_2, f3_0],
    ![f3_0, f3_2, f3_1, f3_1, f3_1],
    ![f3_1, f3_2, f3_0, f3_2, f3_1],
    ![f3_1, f3_0, f3_1, f3_2, f3_1],
    ![f3_2, f3_1, f3_2, f3_0, f3_2],
    ![f3_0, f3_1, f3_2, f3_1, f3_2]}

private theorem ternaryFiveRadiusTwo_card :
    ternaryFiveRadiusTwoCode.card ≤ 8 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternaryFiveRadiusTwo_covers :
    CoversFinset ternaryFiveRadiusTwoCode 2 := by
  show ∀ x : QaryWord 3 5,
    ∃ c : QaryWord 3 5, c ∈ ternaryFiveRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitTernaryFiveRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryFiveRadiusTwoExplicit : ExplicitQaryUpper 3 5 2 8 :=
  { code := ternaryFiveRadiusTwoCode
    card_le := ternaryFiveRadiusTwo_card
    covers := ternaryFiveRadiusTwo_covers }

def smallExplicitTernaryFiveRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 5 ∧ r = 2 then 8 else trivialUpper q n r

theorem smallExplicitTernaryFiveRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryFiveRadiusTwoUpper q n r) := by
  by_cases h : q = 3 ∧ n = 5 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryFiveRadiusTwoUpper] using
      smallExplicitTernaryFiveRadiusTwoExplicit.toUpper
  · simpa [smallExplicitTernaryFiveRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitTernaryFiveRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitTernaryFiveRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitTernaryFiveRadiusTwoUpperName
      (smallExplicitTernaryFiveRadiusTwoUpper_valid q n r)

private def ternarySixRadiusTwoCode : Finset (QaryWord 3 6) :=
  {![f3_2, f3_0, f3_0, f3_1, f3_1, f3_0],
    ![f3_1, f3_0, f3_1, f3_0, f3_0, f3_1],
    ![f3_2, f3_1, f3_0, f3_2, f3_0, f3_2],
    ![f3_2, f3_2, f3_1, f3_2, f3_1, f3_2],
    ![f3_1, f3_0, f3_2, f3_2, f3_2, f3_0],
    ![f3_0, f3_2, f3_0, f3_2, f3_1, f3_1],
    ![f3_1, f3_1, f3_1, f3_2, f3_2, f3_1],
    ![f3_2, f3_2, f3_0, f3_1, f3_2, f3_1],
    ![f3_0, f3_1, f3_1, f3_0, f3_2, f3_0],
    ![f3_1, f3_2, f3_1, f3_1, f3_2, f3_2],
    ![f3_1, f3_1, f3_0, f3_1, f3_1, f3_2],
    ![f3_0, f3_0, f3_1, f3_1, f3_0, f3_0],
    ![f3_0, f3_0, f3_2, f3_0, f3_2, f3_2],
    ![f3_1, f3_2, f3_2, f3_0, f3_0, f3_0],
    ![f3_0, f3_2, f3_2, f3_1, f3_0, f3_2],
    ![f3_2, f3_1, f3_2, f3_1, f3_1, f3_1],
    ![f3_0, f3_1, f3_2, f3_2, f3_0, f3_1]}

private theorem ternarySixRadiusTwo_card :
    ternarySixRadiusTwoCode.card ≤ 17 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternarySixRadiusTwo_covers :
    CoversFinset ternarySixRadiusTwoCode 2 := by
  show ∀ x : QaryWord 3 6,
    ∃ c : QaryWord 3 6, c ∈ ternarySixRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitTernarySixRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernarySixRadiusTwoExplicit : ExplicitQaryUpper 3 6 2 17 :=
  { code := ternarySixRadiusTwoCode
    card_le := ternarySixRadiusTwo_card
    covers := ternarySixRadiusTwo_covers }

def smallExplicitTernarySixRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 6 ∧ r = 2 then 17 else trivialUpper q n r

theorem smallExplicitTernarySixRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernarySixRadiusTwoUpper q n r) := by
  by_cases h : q = 3 ∧ n = 6 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernarySixRadiusTwoUpper] using
      smallExplicitTernarySixRadiusTwoExplicit.toUpper
  · simpa [smallExplicitTernarySixRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitTernarySixRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitTernarySixRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitTernarySixRadiusTwoUpperName
      (smallExplicitTernarySixRadiusTwoUpper_valid q n r)

private def ternaryFiveRadiusThreeCode : Finset (QaryWord 3 5) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_1, f3_1, f3_1, f3_1, f3_1],
    ![f3_2, f3_2, f3_2, f3_2, f3_2]}

private theorem ternaryFiveRadiusThree_card :
    ternaryFiveRadiusThreeCode.card ≤ 3 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternaryFiveRadiusThree_covers :
    CoversFinset ternaryFiveRadiusThreeCode 3 := by
  show ∀ x : QaryWord 3 5,
    ∃ c : QaryWord 3 5, c ∈ ternaryFiveRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitTernaryFiveRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryFiveRadiusThreeExplicit : ExplicitQaryUpper 3 5 3 3 :=
  { code := ternaryFiveRadiusThreeCode
    card_le := ternaryFiveRadiusThree_card
    covers := ternaryFiveRadiusThree_covers }

def smallExplicitTernaryFiveRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 5 ∧ r = 3 then 3 else trivialUpper q n r

theorem smallExplicitTernaryFiveRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryFiveRadiusThreeUpper q n r) := by
  by_cases h : q = 3 ∧ n = 5 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryFiveRadiusThreeUpper] using
      smallExplicitTernaryFiveRadiusThreeExplicit.toUpper
  · simpa [smallExplicitTernaryFiveRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitTernaryFiveRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitTernaryFiveRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitTernaryFiveRadiusThreeUpperName
      (smallExplicitTernaryFiveRadiusThreeUpper_valid q n r)

private def ternarySixRadiusThreeCode : Finset (QaryWord 3 6) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_1, f3_2, f3_0, f3_1, f3_2, f3_0],
    ![f3_1, f3_0, f3_1, f3_1, f3_2, f3_0],
    ![f3_0, f3_2, f3_1, f3_0, f3_0, f3_1],
    ![f3_2, f3_1, f3_2, f3_2, f3_1, f3_1],
    ![f3_2, f3_1, f3_2, f3_2, f3_1, f3_2]}

private theorem ternarySixRadiusThree_card :
    ternarySixRadiusThreeCode.card ≤ 6 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternarySixRadiusThree_covers :
    CoversFinset ternarySixRadiusThreeCode 3 := by
  show ∀ x : QaryWord 3 6,
    ∃ c : QaryWord 3 6, c ∈ ternarySixRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitTernarySixRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernarySixRadiusThreeExplicit : ExplicitQaryUpper 3 6 3 6 :=
  { code := ternarySixRadiusThreeCode
    card_le := ternarySixRadiusThree_card
    covers := ternarySixRadiusThree_covers }

def smallExplicitTernarySixRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 6 ∧ r = 3 then 6 else trivialUpper q n r

theorem smallExplicitTernarySixRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernarySixRadiusThreeUpper q n r) := by
  by_cases h : q = 3 ∧ n = 6 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernarySixRadiusThreeUpper] using
      smallExplicitTernarySixRadiusThreeExplicit.toUpper
  · simpa [smallExplicitTernarySixRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitTernarySixRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitTernarySixRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitTernarySixRadiusThreeUpperName
      (smallExplicitTernarySixRadiusThreeUpper_valid q n r)

private def quaternary331Code : Finset (QaryWord 4 3) :=
  {![f4_0, f4_0, f4_0],
    ![f4_0, f4_2, f4_2],
    ![f4_1, f4_1, f4_1],
    ![f4_1, f4_3, f4_3],
    ![f4_2, f4_1, f4_3],
    ![f4_2, f4_3, f4_1],
    ![f4_3, f4_0, f4_2],
    ![f4_3, f4_2, f4_0]}

private theorem quaternary331_card :
    quaternary331Code.card ≤ 8 := by
  covering_decide

private theorem quaternary331_covers :
    CoversFinset quaternary331Code 1 := by
  show ∀ x : QaryWord 4 3,
    ∃ c : QaryWord 4 3, c ∈ quaternary331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuaternary331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary331Explicit : ExplicitQaryUpper 4 3 1 8 :=
  { code := quaternary331Code
    card_le := quaternary331_card
    covers := quaternary331_covers }

def smallExplicitQuaternary331Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 3 ∧ r = 1 then 8 else trivialUpper q n r

theorem smallExplicitQuaternary331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary331Upper q n r) := by
  by_cases h : q = 4 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary331Upper] using
      smallExplicitQuaternary331Explicit.toUpper
  · simpa [smallExplicitQuaternary331Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary331UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary331Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary331UpperName
      (smallExplicitQuaternary331Upper_valid q n r)

private def quaternary441Code : Finset (QaryWord 4 4) :=
  {![f4_0, f4_0, f4_0, f4_0],
    ![f4_0, f4_1, f4_0, f4_0],
    ![f4_2, f4_3, f4_1, f4_0],
    ![f4_3, f4_3, f4_1, f4_0],
    ![f4_1, f4_2, f4_2, f4_0],
    ![f4_1, f4_2, f4_3, f4_0],
    ![f4_1, f4_3, f4_0, f4_1],
    ![f4_0, f4_2, f4_1, f4_1],
    ![f4_3, f4_0, f4_2, f4_1],
    ![f4_2, f4_1, f4_2, f4_1],
    ![f4_2, f4_0, f4_3, f4_1],
    ![f4_3, f4_1, f4_3, f4_1],
    ![f4_2, f4_2, f4_0, f4_2],
    ![f4_3, f4_2, f4_0, f4_2],
    ![f4_1, f4_0, f4_1, f4_2],
    ![f4_1, f4_1, f4_1, f4_2],
    ![f4_0, f4_3, f4_2, f4_2],
    ![f4_0, f4_3, f4_3, f4_2],
    ![f4_1, f4_3, f4_0, f4_3],
    ![f4_0, f4_2, f4_1, f4_3],
    ![f4_2, f4_0, f4_2, f4_3],
    ![f4_3, f4_1, f4_2, f4_3],
    ![f4_3, f4_0, f4_3, f4_3],
    ![f4_2, f4_1, f4_3, f4_3]}

private theorem quaternary441_card :
    quaternary441Code.card ≤ 24 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quaternary441_covers :
    CoversFinset quaternary441Code 1 := by
  show ∀ x : QaryWord 4 4,
    ∃ c : QaryWord 4 4, c ∈ quaternary441Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuaternary441UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary441Explicit : ExplicitQaryUpper 4 4 1 24 :=
  { code := quaternary441Code
    card_le := quaternary441_card
    covers := quaternary441_covers }

def smallExplicitQuaternary441Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 4 ∧ r = 1 then 24 else trivialUpper q n r

theorem smallExplicitQuaternary441Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary441Upper q n r) := by
  by_cases h : q = 4 ∧ n = 4 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary441Upper] using
      smallExplicitQuaternary441Explicit.toUpper
  · simpa [smallExplicitQuaternary441Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary441UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary441Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary441UpperName
      (smallExplicitQuaternary441Upper_valid q n r)

private def quaternary442Code : Finset (QaryWord 4 4) :=
  {![f4_0, f4_0, f4_0, f4_0],
    ![f4_1, f4_2, f4_2, f4_0],
    ![f4_3, f4_0, f4_0, f4_1],
    ![f4_3, f4_1, f4_3, f4_1],
    ![f4_1, f4_0, f4_0, f4_2],
    ![f4_0, f4_2, f4_2, f4_2],
    ![f4_2, f4_3, f4_1, f4_3]}

private theorem quaternary442_card :
    quaternary442Code.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quaternary442_covers :
    CoversFinset quaternary442Code 2 := by
  show ∀ x : QaryWord 4 4,
    ∃ c : QaryWord 4 4, c ∈ quaternary442Code ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitQuaternary442UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary442Explicit : ExplicitQaryUpper 4 4 2 7 :=
  { code := quaternary442Code
    card_le := quaternary442_card
    covers := quaternary442_covers }

def smallExplicitQuaternary442Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 4 ∧ r = 2 then 7 else trivialUpper q n r

theorem smallExplicitQuaternary442Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary442Upper q n r) := by
  by_cases h : q = 4 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary442Upper] using
      smallExplicitQuaternary442Explicit.toUpper
  · simpa [smallExplicitQuaternary442Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary442UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary442Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary442UpperName
      (smallExplicitQuaternary442Upper_valid q n r)

private def quinary531Code : Finset (QaryWord 5 3) :=
  {![f5_0, f5_0, f5_0],
    ![f5_1, f5_2, f5_0],
    ![f5_4, f5_3, f5_0],
    ![f5_1, f5_0, f5_1],
    ![f5_4, f5_2, f5_1],
    ![f5_0, f5_3, f5_1],
    ![f5_4, f5_0, f5_2],
    ![f5_0, f5_2, f5_2],
    ![f5_1, f5_3, f5_2],
    ![f5_3, f5_1, f5_3],
    ![f5_2, f5_4, f5_3],
    ![f5_2, f5_1, f5_4],
    ![f5_3, f5_4, f5_4]}

private theorem quinary531_card :
    quinary531Code.card ≤ 13 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quinary531_covers :
    CoversFinset quinary531Code 1 := by
  show ∀ x : QaryWord 5 3,
    ∃ c : QaryWord 5 3, c ∈ quinary531Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuinary531UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuinary531Explicit : ExplicitQaryUpper 5 3 1 13 :=
  { code := quinary531Code
    card_le := quinary531_card
    covers := quinary531_covers }

def smallExplicitQuinary531Upper (q n r : Nat) : Nat :=
  if q = 5 ∧ n = 3 ∧ r = 1 then 13 else trivialUpper q n r

theorem smallExplicitQuinary531Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuinary531Upper q n r) := by
  by_cases h : q = 5 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuinary531Upper] using
      smallExplicitQuinary531Explicit.toUpper
  · simpa [smallExplicitQuinary531Upper, h] using trivialUpper_valid q n r

def smallExplicitQuinary531UpperSource : UpperBoundSource where
  value := smallExplicitQuinary531Upper
  trace := fun q n r =>
    .primitive smallExplicitQuinary531UpperName
      (smallExplicitQuinary531Upper_valid q n r)

private def senary631Code : Finset (QaryWord 6 3) :=
  {![f6_0, f6_0, f6_0],
    ![f6_1, f6_1, f6_0],
    ![f6_5, f6_2, f6_0],
    ![f6_4, f6_3, f6_1],
    ![f6_2, f6_4, f6_1],
    ![f6_3, f6_5, f6_1],
    ![f6_3, f6_3, f6_2],
    ![f6_4, f6_4, f6_2],
    ![f6_2, f6_5, f6_2],
    ![f6_5, f6_0, f6_3],
    ![f6_0, f6_1, f6_3],
    ![f6_1, f6_2, f6_3],
    ![f6_1, f6_0, f6_4],
    ![f6_5, f6_1, f6_4],
    ![f6_0, f6_2, f6_4],
    ![f6_2, f6_3, f6_5],
    ![f6_3, f6_4, f6_5],
    ![f6_4, f6_5, f6_5]}

private theorem senary631_card :
    senary631Code.card ≤ 18 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem senary631_covers :
    CoversFinset senary631Code 1 := by
  show ∀ x : QaryWord 6 3,
    ∃ c : QaryWord 6 3, c ∈ senary631Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSenary631UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSenary631Explicit : ExplicitQaryUpper 6 3 1 18 :=
  { code := senary631Code
    card_le := senary631_card
    covers := senary631_covers }

def smallExplicitSenary631Upper (q n r : Nat) : Nat :=
  if q = 6 ∧ n = 3 ∧ r = 1 then 18 else trivialUpper q n r

theorem smallExplicitSenary631Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSenary631Upper q n r) := by
  by_cases h : q = 6 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSenary631Upper] using
      smallExplicitSenary631Explicit.toUpper
  · simpa [smallExplicitSenary631Upper, h] using trivialUpper_valid q n r

def smallExplicitSenary631UpperSource : UpperBoundSource where
  value := smallExplicitSenary631Upper
  trace := fun q n r =>
    .primitive smallExplicitSenary631UpperName
      (smallExplicitSenary631Upper_valid q n r)

private def septenary731Code : Finset (QaryWord 7 3) :=
  {![f7_0, f7_0, f7_0],
    ![f7_4, f7_2, f7_0],
    ![f7_5, f7_5, f7_0],
    ![f7_6, f7_1, f7_1],
    ![f7_2, f7_3, f7_1],
    ![f7_1, f7_4, f7_1],
    ![f7_3, f7_6, f7_1],
    ![f7_1, f7_1, f7_2],
    ![f7_3, f7_3, f7_2],
    ![f7_6, f7_4, f7_2],
    ![f7_2, f7_6, f7_2],
    ![f7_5, f7_0, f7_3],
    ![f7_0, f7_2, f7_3],
    ![f7_4, f7_5, f7_3],
    ![f7_2, f7_1, f7_4],
    ![f7_1, f7_3, f7_4],
    ![f7_3, f7_4, f7_4],
    ![f7_6, f7_6, f7_4],
    ![f7_3, f7_1, f7_5],
    ![f7_6, f7_3, f7_5],
    ![f7_2, f7_4, f7_5],
    ![f7_1, f7_6, f7_5],
    ![f7_4, f7_0, f7_6],
    ![f7_5, f7_2, f7_6],
    ![f7_0, f7_5, f7_6]}

private theorem septenary731_card :
    septenary731Code.card ≤ 25 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem septenary731_covers :
    CoversFinset septenary731Code 1 := by
  show ∀ x : QaryWord 7 3,
    ∃ c : QaryWord 7 3, c ∈ septenary731Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSeptenary731UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSeptenary731Explicit : ExplicitQaryUpper 7 3 1 25 :=
  { code := septenary731Code
    card_le := septenary731_card
    covers := septenary731_covers }

def smallExplicitSeptenary731Upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 3 ∧ r = 1 then 25 else trivialUpper q n r

theorem smallExplicitSeptenary731Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSeptenary731Upper q n r) := by
  by_cases h : q = 7 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSeptenary731Upper] using
      smallExplicitSeptenary731Explicit.toUpper
  · simpa [smallExplicitSeptenary731Upper, h] using trivialUpper_valid q n r

def smallExplicitSeptenary731UpperSource : UpperBoundSource where
  value := smallExplicitSeptenary731Upper
  trace := fun q n r =>
    .primitive smallExplicitSeptenary731UpperName
      (smallExplicitSeptenary731Upper_valid q n r)

private def octonary831Code : Finset (QaryWord 8 3) :=
  {![f8_0, f8_0, f8_0],
    ![f8_2, f8_1, f8_0],
    ![f8_3, f8_2, f8_0],
    ![f8_6, f8_3, f8_0],
    ![f8_7, f8_4, f8_1],
    ![f8_4, f8_5, f8_1],
    ![f8_1, f8_6, f8_1],
    ![f8_5, f8_7, f8_1],
    ![f8_5, f8_4, f8_2],
    ![f8_1, f8_5, f8_2],
    ![f8_7, f8_6, f8_2],
    ![f8_4, f8_7, f8_2],
    ![f8_3, f8_0, f8_3],
    ![f8_0, f8_1, f8_3],
    ![f8_6, f8_2, f8_3],
    ![f8_2, f8_3, f8_3],
    ![f8_6, f8_0, f8_4],
    ![f8_3, f8_1, f8_4],
    ![f8_2, f8_2, f8_4],
    ![f8_0, f8_3, f8_4],
    ![f8_4, f8_4, f8_5],
    ![f8_7, f8_5, f8_5],
    ![f8_5, f8_6, f8_5],
    ![f8_1, f8_7, f8_5],
    ![f8_2, f8_0, f8_6],
    ![f8_6, f8_1, f8_6],
    ![f8_0, f8_2, f8_6],
    ![f8_3, f8_3, f8_6],
    ![f8_1, f8_4, f8_7],
    ![f8_5, f8_5, f8_7],
    ![f8_4, f8_6, f8_7],
    ![f8_7, f8_7, f8_7]}

private theorem octonary831_card :
    octonary831Code.card ≤ 32 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem octonary831_covers :
    CoversFinset octonary831Code 1 := by
  show ∀ x : QaryWord 8 3,
    ∃ c : QaryWord 8 3, c ∈ octonary831Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitOctonary831UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitOctonary831Explicit : ExplicitQaryUpper 8 3 1 32 :=
  { code := octonary831Code
    card_le := octonary831_card
    covers := octonary831_covers }

def smallExplicitOctonary831Upper (q n r : Nat) : Nat :=
  if q = 8 ∧ n = 3 ∧ r = 1 then 32 else trivialUpper q n r

theorem smallExplicitOctonary831Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitOctonary831Upper q n r) := by
  by_cases h : q = 8 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitOctonary831Upper] using
      smallExplicitOctonary831Explicit.toUpper
  · simpa [smallExplicitOctonary831Upper, h] using trivialUpper_valid q n r

def smallExplicitOctonary831UpperSource : UpperBoundSource where
  value := smallExplicitOctonary831Upper
  trace := fun q n r =>
    .primitive smallExplicitOctonary831UpperName
      (smallExplicitOctonary831Upper_valid q n r)

private def nonary931Code : Finset (QaryWord 9 3) :=
  {![f9_0, f9_0, f9_0],
    ![f9_3, f9_1, f9_0],
    ![f9_5, f9_3, f9_0],
    ![f9_2, f9_8, f9_0],
    ![f9_5, f9_0, f9_1],
    ![f9_2, f9_1, f9_1],
    ![f9_0, f9_3, f9_1],
    ![f9_3, f9_8, f9_1],
    ![f9_4, f9_2, f9_2],
    ![f9_6, f9_4, f9_2],
    ![f9_1, f9_5, f9_2],
    ![f9_8, f9_6, f9_2],
    ![f9_7, f9_7, f9_2],
    ![f9_1, f9_2, f9_3],
    ![f9_7, f9_4, f9_3],
    ![f9_6, f9_5, f9_3],
    ![f9_4, f9_6, f9_3],
    ![f9_8, f9_7, f9_3],
    ![f9_6, f9_2, f9_4],
    ![f9_1, f9_4, f9_4],
    ![f9_8, f9_5, f9_4],
    ![f9_7, f9_6, f9_4],
    ![f9_4, f9_7, f9_4],
    ![f9_7, f9_2, f9_5],
    ![f9_8, f9_4, f9_5],
    ![f9_4, f9_5, f9_5],
    ![f9_6, f9_6, f9_5],
    ![f9_1, f9_7, f9_5],
    ![f9_2, f9_0, f9_6],
    ![f9_0, f9_1, f9_6],
    ![f9_3, f9_3, f9_6],
    ![f9_5, f9_8, f9_6],
    ![f9_8, f9_2, f9_7],
    ![f9_4, f9_4, f9_7],
    ![f9_7, f9_5, f9_7],
    ![f9_1, f9_6, f9_7],
    ![f9_6, f9_7, f9_7],
    ![f9_3, f9_0, f9_8],
    ![f9_5, f9_1, f9_8],
    ![f9_2, f9_3, f9_8],
    ![f9_0, f9_8, f9_8]}

private theorem nonary931_card :
    nonary931Code.card ≤ 41 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem nonary931_covers :
    CoversFinset nonary931Code 1 := by
  show ∀ x : QaryWord 9 3,
    ∃ c : QaryWord 9 3, c ∈ nonary931Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitNonary931UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitNonary931Explicit : ExplicitQaryUpper 9 3 1 41 :=
  { code := nonary931Code
    card_le := nonary931_card
    covers := nonary931_covers }

def smallExplicitNonary931Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 3 ∧ r = 1 then 41 else trivialUpper q n r

theorem smallExplicitNonary931Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitNonary931Upper q n r) := by
  by_cases h : q = 9 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitNonary931Upper] using
      smallExplicitNonary931Explicit.toUpper
  · simpa [smallExplicitNonary931Upper, h] using trivialUpper_valid q n r

def smallExplicitNonary931UpperSource : UpperBoundSource where
  value := smallExplicitNonary931Upper
  trace := fun q n r =>
    .primitive smallExplicitNonary931UpperName
      (smallExplicitNonary931Upper_valid q n r)

private def denary1031Code : Finset (QaryWord 10 3) :=
  {![f10_0, f10_0, f10_0],
    ![f10_1, f10_1, f10_0],
    ![f10_2, f10_2, f10_0],
    ![f10_3, f10_3, f10_0],
    ![f10_4, f10_4, f10_0],
    ![f10_0, f10_1, f10_1],
    ![f10_1, f10_2, f10_1],
    ![f10_2, f10_3, f10_1],
    ![f10_3, f10_4, f10_1],
    ![f10_4, f10_0, f10_1],
    ![f10_0, f10_2, f10_2],
    ![f10_1, f10_3, f10_2],
    ![f10_2, f10_4, f10_2],
    ![f10_3, f10_0, f10_2],
    ![f10_4, f10_1, f10_2],
    ![f10_0, f10_3, f10_3],
    ![f10_1, f10_4, f10_3],
    ![f10_2, f10_0, f10_3],
    ![f10_3, f10_1, f10_3],
    ![f10_4, f10_2, f10_3],
    ![f10_0, f10_4, f10_4],
    ![f10_1, f10_0, f10_4],
    ![f10_2, f10_1, f10_4],
    ![f10_3, f10_2, f10_4],
    ![f10_4, f10_3, f10_4],
    ![f10_5, f10_5, f10_5],
    ![f10_6, f10_6, f10_5],
    ![f10_7, f10_7, f10_5],
    ![f10_8, f10_8, f10_5],
    ![f10_9, f10_9, f10_5],
    ![f10_5, f10_6, f10_6],
    ![f10_6, f10_7, f10_6],
    ![f10_7, f10_8, f10_6],
    ![f10_8, f10_9, f10_6],
    ![f10_9, f10_5, f10_6],
    ![f10_5, f10_7, f10_7],
    ![f10_6, f10_8, f10_7],
    ![f10_7, f10_9, f10_7],
    ![f10_8, f10_5, f10_7],
    ![f10_9, f10_6, f10_7],
    ![f10_5, f10_8, f10_8],
    ![f10_6, f10_9, f10_8],
    ![f10_7, f10_5, f10_8],
    ![f10_8, f10_6, f10_8],
    ![f10_9, f10_7, f10_8],
    ![f10_5, f10_9, f10_9],
    ![f10_6, f10_5, f10_9],
    ![f10_7, f10_6, f10_9],
    ![f10_8, f10_7, f10_9],
    ![f10_9, f10_8, f10_9]}

set_option maxRecDepth 10000 in
private theorem denary1031_card :
    denary1031Code.card ≤ 50 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 2000000 in
private theorem denary1031_covers :
    CoversFinset denary1031Code 1 := by
  show ∀ x : QaryWord 10 3,
    ∃ c : QaryWord 10 3, c ∈ denary1031Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitDenary1031UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitDenary1031Explicit : ExplicitQaryUpper 10 3 1 50 :=
  { code := denary1031Code
    card_le := denary1031_card
    covers := denary1031_covers }

def smallExplicitDenary1031Upper (q n r : Nat) : Nat :=
  if q = 10 ∧ n = 3 ∧ r = 1 then 50 else trivialUpper q n r

theorem smallExplicitDenary1031Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitDenary1031Upper q n r) := by
  by_cases h : q = 10 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitDenary1031Upper] using
      smallExplicitDenary1031Explicit.toUpper
  · simpa [smallExplicitDenary1031Upper, h] using trivialUpper_valid q n r

def smallExplicitDenary1031UpperSource : UpperBoundSource where
  value := smallExplicitDenary1031Upper
  trace := fun q n r =>
    .primitive smallExplicitDenary1031UpperName
      (smallExplicitDenary1031Upper_valid q n r)

private def elevenary1131Code : Finset (QaryWord 11 3) :=
  {![f11_0, f11_0, f11_0],
    ![f11_1, f11_1, f11_0],
    ![f11_2, f11_2, f11_0],
    ![f11_3, f11_3, f11_0],
    ![f11_4, f11_4, f11_0],
    ![f11_0, f11_1, f11_1],
    ![f11_1, f11_2, f11_1],
    ![f11_2, f11_3, f11_1],
    ![f11_3, f11_4, f11_1],
    ![f11_4, f11_0, f11_1],
    ![f11_0, f11_2, f11_2],
    ![f11_1, f11_3, f11_2],
    ![f11_2, f11_4, f11_2],
    ![f11_3, f11_0, f11_2],
    ![f11_4, f11_1, f11_2],
    ![f11_0, f11_3, f11_3],
    ![f11_1, f11_4, f11_3],
    ![f11_2, f11_0, f11_3],
    ![f11_3, f11_1, f11_3],
    ![f11_4, f11_2, f11_3],
    ![f11_0, f11_4, f11_4],
    ![f11_1, f11_0, f11_4],
    ![f11_2, f11_1, f11_4],
    ![f11_3, f11_2, f11_4],
    ![f11_4, f11_3, f11_4],
    ![f11_5, f11_5, f11_5],
    ![f11_6, f11_6, f11_5],
    ![f11_7, f11_7, f11_5],
    ![f11_8, f11_8, f11_5],
    ![f11_9, f11_9, f11_5],
    ![f11_10, f11_10, f11_5],
    ![f11_5, f11_6, f11_6],
    ![f11_6, f11_7, f11_6],
    ![f11_7, f11_8, f11_6],
    ![f11_8, f11_9, f11_6],
    ![f11_9, f11_10, f11_6],
    ![f11_10, f11_5, f11_6],
    ![f11_5, f11_7, f11_7],
    ![f11_6, f11_8, f11_7],
    ![f11_7, f11_9, f11_7],
    ![f11_8, f11_10, f11_7],
    ![f11_9, f11_5, f11_7],
    ![f11_10, f11_6, f11_7],
    ![f11_5, f11_8, f11_8],
    ![f11_6, f11_9, f11_8],
    ![f11_7, f11_10, f11_8],
    ![f11_8, f11_5, f11_8],
    ![f11_9, f11_6, f11_8],
    ![f11_10, f11_7, f11_8],
    ![f11_5, f11_9, f11_9],
    ![f11_6, f11_10, f11_9],
    ![f11_7, f11_5, f11_9],
    ![f11_8, f11_6, f11_9],
    ![f11_9, f11_7, f11_9],
    ![f11_10, f11_8, f11_9],
    ![f11_5, f11_10, f11_10],
    ![f11_6, f11_5, f11_10],
    ![f11_7, f11_6, f11_10],
    ![f11_8, f11_7, f11_10],
    ![f11_9, f11_8, f11_10],
    ![f11_10, f11_9, f11_10]}

set_option maxRecDepth 10000 in
private theorem elevenary1131_card :
    elevenary1131Code.card ≤ 61 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
private theorem elevenary1131_covers :
    CoversFinset elevenary1131Code 1 := by
  show ∀ x : QaryWord 11 3,
    ∃ c : QaryWord 11 3, c ∈ elevenary1131Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitElevenary1131UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitElevenary1131Explicit : ExplicitQaryUpper 11 3 1 61 :=
  { code := elevenary1131Code
    card_le := elevenary1131_card
    covers := elevenary1131_covers }

def smallExplicitElevenary1131Upper (q n r : Nat) : Nat :=
  if q = 11 ∧ n = 3 ∧ r = 1 then 61 else trivialUpper q n r

theorem smallExplicitElevenary1131Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitElevenary1131Upper q n r) := by
  by_cases h : q = 11 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitElevenary1131Upper] using
      smallExplicitElevenary1131Explicit.toUpper
  · simpa [smallExplicitElevenary1131Upper, h] using trivialUpper_valid q n r

def smallExplicitElevenary1131UpperSource : UpperBoundSource where
  value := smallExplicitElevenary1131Upper
  trace := fun q n r =>
    .primitive smallExplicitElevenary1131UpperName
      (smallExplicitElevenary1131Upper_valid q n r)

private def duodenary1231Code : Finset (QaryWord 12 3) :=
  {![f12_0, f12_0, f12_0],
    ![f12_1, f12_1, f12_0],
    ![f12_2, f12_2, f12_0],
    ![f12_3, f12_3, f12_0],
    ![f12_4, f12_4, f12_0],
    ![f12_5, f12_5, f12_0],
    ![f12_0, f12_1, f12_1],
    ![f12_1, f12_2, f12_1],
    ![f12_2, f12_3, f12_1],
    ![f12_3, f12_4, f12_1],
    ![f12_4, f12_5, f12_1],
    ![f12_5, f12_0, f12_1],
    ![f12_0, f12_2, f12_2],
    ![f12_1, f12_3, f12_2],
    ![f12_2, f12_4, f12_2],
    ![f12_3, f12_5, f12_2],
    ![f12_4, f12_0, f12_2],
    ![f12_5, f12_1, f12_2],
    ![f12_0, f12_3, f12_3],
    ![f12_1, f12_4, f12_3],
    ![f12_2, f12_5, f12_3],
    ![f12_3, f12_0, f12_3],
    ![f12_4, f12_1, f12_3],
    ![f12_5, f12_2, f12_3],
    ![f12_0, f12_4, f12_4],
    ![f12_1, f12_5, f12_4],
    ![f12_2, f12_0, f12_4],
    ![f12_3, f12_1, f12_4],
    ![f12_4, f12_2, f12_4],
    ![f12_5, f12_3, f12_4],
    ![f12_0, f12_5, f12_5],
    ![f12_1, f12_0, f12_5],
    ![f12_2, f12_1, f12_5],
    ![f12_3, f12_2, f12_5],
    ![f12_4, f12_3, f12_5],
    ![f12_5, f12_4, f12_5],
    ![f12_6, f12_6, f12_6],
    ![f12_7, f12_7, f12_6],
    ![f12_8, f12_8, f12_6],
    ![f12_9, f12_9, f12_6],
    ![f12_10, f12_10, f12_6],
    ![f12_11, f12_11, f12_6],
    ![f12_6, f12_7, f12_7],
    ![f12_7, f12_8, f12_7],
    ![f12_8, f12_9, f12_7],
    ![f12_9, f12_10, f12_7],
    ![f12_10, f12_11, f12_7],
    ![f12_11, f12_6, f12_7],
    ![f12_6, f12_8, f12_8],
    ![f12_7, f12_9, f12_8],
    ![f12_8, f12_10, f12_8],
    ![f12_9, f12_11, f12_8],
    ![f12_10, f12_6, f12_8],
    ![f12_11, f12_7, f12_8],
    ![f12_6, f12_9, f12_9],
    ![f12_7, f12_10, f12_9],
    ![f12_8, f12_11, f12_9],
    ![f12_9, f12_6, f12_9],
    ![f12_10, f12_7, f12_9],
    ![f12_11, f12_8, f12_9],
    ![f12_6, f12_10, f12_10],
    ![f12_7, f12_11, f12_10],
    ![f12_8, f12_6, f12_10],
    ![f12_9, f12_7, f12_10],
    ![f12_10, f12_8, f12_10],
    ![f12_11, f12_9, f12_10],
    ![f12_6, f12_11, f12_11],
    ![f12_7, f12_6, f12_11],
    ![f12_8, f12_7, f12_11],
    ![f12_9, f12_8, f12_11],
    ![f12_10, f12_9, f12_11],
    ![f12_11, f12_10, f12_11]}

set_option maxRecDepth 10000 in
private theorem duodenary1231_card :
    duodenary1231Code.card ≤ 72 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
private theorem duodenary1231_covers :
    CoversFinset duodenary1231Code 1 := by
  show ∀ x : QaryWord 12 3,
    ∃ c : QaryWord 12 3, c ∈ duodenary1231Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitDuodenary1231UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitDuodenary1231Explicit : ExplicitQaryUpper 12 3 1 72 :=
  { code := duodenary1231Code
    card_le := duodenary1231_card
    covers := duodenary1231_covers }

def smallExplicitDuodenary1231Upper (q n r : Nat) : Nat :=
  if q = 12 ∧ n = 3 ∧ r = 1 then 72 else trivialUpper q n r

theorem smallExplicitDuodenary1231Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitDuodenary1231Upper q n r) := by
  by_cases h : q = 12 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitDuodenary1231Upper] using
      smallExplicitDuodenary1231Explicit.toUpper
  · simpa [smallExplicitDuodenary1231Upper, h] using trivialUpper_valid q n r

def smallExplicitDuodenary1231UpperSource : UpperBoundSource where
  value := smallExplicitDuodenary1231Upper
  trace := fun q n r =>
    .primitive smallExplicitDuodenary1231UpperName
      (smallExplicitDuodenary1231Upper_valid q n r)

private def thirteenary1331Code : Finset (QaryWord 13 3) :=
  {![f13_0, f13_0, f13_0],
    ![f13_1, f13_1, f13_0],
    ![f13_2, f13_2, f13_0],
    ![f13_3, f13_3, f13_0],
    ![f13_4, f13_4, f13_0],
    ![f13_5, f13_5, f13_0],
    ![f13_0, f13_1, f13_1],
    ![f13_1, f13_2, f13_1],
    ![f13_2, f13_3, f13_1],
    ![f13_3, f13_4, f13_1],
    ![f13_4, f13_5, f13_1],
    ![f13_5, f13_0, f13_1],
    ![f13_0, f13_2, f13_2],
    ![f13_1, f13_3, f13_2],
    ![f13_2, f13_4, f13_2],
    ![f13_3, f13_5, f13_2],
    ![f13_4, f13_0, f13_2],
    ![f13_5, f13_1, f13_2],
    ![f13_0, f13_3, f13_3],
    ![f13_1, f13_4, f13_3],
    ![f13_2, f13_5, f13_3],
    ![f13_3, f13_0, f13_3],
    ![f13_4, f13_1, f13_3],
    ![f13_5, f13_2, f13_3],
    ![f13_0, f13_4, f13_4],
    ![f13_1, f13_5, f13_4],
    ![f13_2, f13_0, f13_4],
    ![f13_3, f13_1, f13_4],
    ![f13_4, f13_2, f13_4],
    ![f13_5, f13_3, f13_4],
    ![f13_0, f13_5, f13_5],
    ![f13_1, f13_0, f13_5],
    ![f13_2, f13_1, f13_5],
    ![f13_3, f13_2, f13_5],
    ![f13_4, f13_3, f13_5],
    ![f13_5, f13_4, f13_5],
    ![f13_6, f13_6, f13_6],
    ![f13_7, f13_7, f13_6],
    ![f13_8, f13_8, f13_6],
    ![f13_9, f13_9, f13_6],
    ![f13_10, f13_10, f13_6],
    ![f13_11, f13_11, f13_6],
    ![f13_12, f13_12, f13_6],
    ![f13_6, f13_7, f13_7],
    ![f13_7, f13_8, f13_7],
    ![f13_8, f13_9, f13_7],
    ![f13_9, f13_10, f13_7],
    ![f13_10, f13_11, f13_7],
    ![f13_11, f13_12, f13_7],
    ![f13_12, f13_6, f13_7],
    ![f13_6, f13_8, f13_8],
    ![f13_7, f13_9, f13_8],
    ![f13_8, f13_10, f13_8],
    ![f13_9, f13_11, f13_8],
    ![f13_10, f13_12, f13_8],
    ![f13_11, f13_6, f13_8],
    ![f13_12, f13_7, f13_8],
    ![f13_6, f13_9, f13_9],
    ![f13_7, f13_10, f13_9],
    ![f13_8, f13_11, f13_9],
    ![f13_9, f13_12, f13_9],
    ![f13_10, f13_6, f13_9],
    ![f13_11, f13_7, f13_9],
    ![f13_12, f13_8, f13_9],
    ![f13_6, f13_10, f13_10],
    ![f13_7, f13_11, f13_10],
    ![f13_8, f13_12, f13_10],
    ![f13_9, f13_6, f13_10],
    ![f13_10, f13_7, f13_10],
    ![f13_11, f13_8, f13_10],
    ![f13_12, f13_9, f13_10],
    ![f13_6, f13_11, f13_11],
    ![f13_7, f13_12, f13_11],
    ![f13_8, f13_6, f13_11],
    ![f13_9, f13_7, f13_11],
    ![f13_10, f13_8, f13_11],
    ![f13_11, f13_9, f13_11],
    ![f13_12, f13_10, f13_11],
    ![f13_6, f13_12, f13_12],
    ![f13_7, f13_6, f13_12],
    ![f13_8, f13_7, f13_12],
    ![f13_9, f13_8, f13_12],
    ![f13_10, f13_9, f13_12],
    ![f13_11, f13_10, f13_12],
    ![f13_12, f13_11, f13_12]}

set_option maxRecDepth 10000 in
private theorem thirteenary1331_card :
    thirteenary1331Code.card ≤ 85 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 16000000 in
private theorem thirteenary1331_covers :
    CoversFinset thirteenary1331Code 1 := by
  show ∀ x : QaryWord 13 3,
    ∃ c : QaryWord 13 3, c ∈ thirteenary1331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitThirteenary1331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitThirteenary1331Explicit : ExplicitQaryUpper 13 3 1 85 :=
  { code := thirteenary1331Code
    card_le := thirteenary1331_card
    covers := thirteenary1331_covers }

def smallExplicitThirteenary1331Upper (q n r : Nat) : Nat :=
  if q = 13 ∧ n = 3 ∧ r = 1 then 85 else trivialUpper q n r

theorem smallExplicitThirteenary1331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitThirteenary1331Upper q n r) := by
  by_cases h : q = 13 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitThirteenary1331Upper] using
      smallExplicitThirteenary1331Explicit.toUpper
  · simpa [smallExplicitThirteenary1331Upper, h] using trivialUpper_valid q n r

def smallExplicitThirteenary1331UpperSource : UpperBoundSource where
  value := smallExplicitThirteenary1331Upper
  trace := fun q n r =>
    .primitive smallExplicitThirteenary1331UpperName
      (smallExplicitThirteenary1331Upper_valid q n r)

private def fourteenary1431Code : Finset (QaryWord 14 3) :=
  {![f14_0, f14_0, f14_0],
    ![f14_1, f14_1, f14_0],
    ![f14_2, f14_2, f14_0],
    ![f14_3, f14_3, f14_0],
    ![f14_4, f14_4, f14_0],
    ![f14_5, f14_5, f14_0],
    ![f14_6, f14_6, f14_0],
    ![f14_0, f14_1, f14_1],
    ![f14_1, f14_2, f14_1],
    ![f14_2, f14_3, f14_1],
    ![f14_3, f14_4, f14_1],
    ![f14_4, f14_5, f14_1],
    ![f14_5, f14_6, f14_1],
    ![f14_6, f14_0, f14_1],
    ![f14_0, f14_2, f14_2],
    ![f14_1, f14_3, f14_2],
    ![f14_2, f14_4, f14_2],
    ![f14_3, f14_5, f14_2],
    ![f14_4, f14_6, f14_2],
    ![f14_5, f14_0, f14_2],
    ![f14_6, f14_1, f14_2],
    ![f14_0, f14_3, f14_3],
    ![f14_1, f14_4, f14_3],
    ![f14_2, f14_5, f14_3],
    ![f14_3, f14_6, f14_3],
    ![f14_4, f14_0, f14_3],
    ![f14_5, f14_1, f14_3],
    ![f14_6, f14_2, f14_3],
    ![f14_0, f14_4, f14_4],
    ![f14_1, f14_5, f14_4],
    ![f14_2, f14_6, f14_4],
    ![f14_3, f14_0, f14_4],
    ![f14_4, f14_1, f14_4],
    ![f14_5, f14_2, f14_4],
    ![f14_6, f14_3, f14_4],
    ![f14_0, f14_5, f14_5],
    ![f14_1, f14_6, f14_5],
    ![f14_2, f14_0, f14_5],
    ![f14_3, f14_1, f14_5],
    ![f14_4, f14_2, f14_5],
    ![f14_5, f14_3, f14_5],
    ![f14_6, f14_4, f14_5],
    ![f14_0, f14_6, f14_6],
    ![f14_1, f14_0, f14_6],
    ![f14_2, f14_1, f14_6],
    ![f14_3, f14_2, f14_6],
    ![f14_4, f14_3, f14_6],
    ![f14_5, f14_4, f14_6],
    ![f14_6, f14_5, f14_6],
    ![f14_7, f14_7, f14_7],
    ![f14_8, f14_8, f14_7],
    ![f14_9, f14_9, f14_7],
    ![f14_10, f14_10, f14_7],
    ![f14_11, f14_11, f14_7],
    ![f14_12, f14_12, f14_7],
    ![f14_13, f14_13, f14_7],
    ![f14_7, f14_8, f14_8],
    ![f14_8, f14_9, f14_8],
    ![f14_9, f14_10, f14_8],
    ![f14_10, f14_11, f14_8],
    ![f14_11, f14_12, f14_8],
    ![f14_12, f14_13, f14_8],
    ![f14_13, f14_7, f14_8],
    ![f14_7, f14_9, f14_9],
    ![f14_8, f14_10, f14_9],
    ![f14_9, f14_11, f14_9],
    ![f14_10, f14_12, f14_9],
    ![f14_11, f14_13, f14_9],
    ![f14_12, f14_7, f14_9],
    ![f14_13, f14_8, f14_9],
    ![f14_7, f14_10, f14_10],
    ![f14_8, f14_11, f14_10],
    ![f14_9, f14_12, f14_10],
    ![f14_10, f14_13, f14_10],
    ![f14_11, f14_7, f14_10],
    ![f14_12, f14_8, f14_10],
    ![f14_13, f14_9, f14_10],
    ![f14_7, f14_11, f14_11],
    ![f14_8, f14_12, f14_11],
    ![f14_9, f14_13, f14_11],
    ![f14_10, f14_7, f14_11],
    ![f14_11, f14_8, f14_11],
    ![f14_12, f14_9, f14_11],
    ![f14_13, f14_10, f14_11],
    ![f14_7, f14_12, f14_12],
    ![f14_8, f14_13, f14_12],
    ![f14_9, f14_7, f14_12],
    ![f14_10, f14_8, f14_12],
    ![f14_11, f14_9, f14_12],
    ![f14_12, f14_10, f14_12],
    ![f14_13, f14_11, f14_12],
    ![f14_7, f14_13, f14_13],
    ![f14_8, f14_7, f14_13],
    ![f14_9, f14_8, f14_13],
    ![f14_10, f14_9, f14_13],
    ![f14_11, f14_10, f14_13],
    ![f14_12, f14_11, f14_13],
    ![f14_13, f14_12, f14_13]}

set_option maxRecDepth 10000 in
private theorem fourteenary1431_card :
    fourteenary1431Code.card ≤ 98 := by
  covering_decide

set_option maxRecDepth 30000 in
set_option maxHeartbeats 32000000 in
private theorem fourteenary1431_covers :
    CoversFinset fourteenary1431Code 1 := by
  show ∀ x : QaryWord 14 3,
    ∃ c : QaryWord 14 3, c ∈ fourteenary1431Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitFourteenary1431UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitFourteenary1431Explicit : ExplicitQaryUpper 14 3 1 98 :=
  { code := fourteenary1431Code
    card_le := fourteenary1431_card
    covers := fourteenary1431_covers }

def smallExplicitFourteenary1431Upper (q n r : Nat) : Nat :=
  if q = 14 ∧ n = 3 ∧ r = 1 then 98 else trivialUpper q n r

theorem smallExplicitFourteenary1431Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitFourteenary1431Upper q n r) := by
  by_cases h : q = 14 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitFourteenary1431Upper] using
      smallExplicitFourteenary1431Explicit.toUpper
  · simpa [smallExplicitFourteenary1431Upper, h] using trivialUpper_valid q n r

def smallExplicitFourteenary1431UpperSource : UpperBoundSource where
  value := smallExplicitFourteenary1431Upper
  trace := fun q n r =>
    .primitive smallExplicitFourteenary1431UpperName
      (smallExplicitFourteenary1431Upper_valid q n r)

private def fifteenary1531Code : Finset (QaryWord 15 3) :=
  {![f15_0, f15_0, f15_0],
    ![f15_1, f15_1, f15_0],
    ![f15_2, f15_2, f15_0],
    ![f15_3, f15_3, f15_0],
    ![f15_4, f15_4, f15_0],
    ![f15_5, f15_5, f15_0],
    ![f15_6, f15_6, f15_0],
    ![f15_0, f15_1, f15_1],
    ![f15_1, f15_2, f15_1],
    ![f15_2, f15_3, f15_1],
    ![f15_3, f15_4, f15_1],
    ![f15_4, f15_5, f15_1],
    ![f15_5, f15_6, f15_1],
    ![f15_6, f15_0, f15_1],
    ![f15_0, f15_2, f15_2],
    ![f15_1, f15_3, f15_2],
    ![f15_2, f15_4, f15_2],
    ![f15_3, f15_5, f15_2],
    ![f15_4, f15_6, f15_2],
    ![f15_5, f15_0, f15_2],
    ![f15_6, f15_1, f15_2],
    ![f15_0, f15_3, f15_3],
    ![f15_1, f15_4, f15_3],
    ![f15_2, f15_5, f15_3],
    ![f15_3, f15_6, f15_3],
    ![f15_4, f15_0, f15_3],
    ![f15_5, f15_1, f15_3],
    ![f15_6, f15_2, f15_3],
    ![f15_0, f15_4, f15_4],
    ![f15_1, f15_5, f15_4],
    ![f15_2, f15_6, f15_4],
    ![f15_3, f15_0, f15_4],
    ![f15_4, f15_1, f15_4],
    ![f15_5, f15_2, f15_4],
    ![f15_6, f15_3, f15_4],
    ![f15_0, f15_5, f15_5],
    ![f15_1, f15_6, f15_5],
    ![f15_2, f15_0, f15_5],
    ![f15_3, f15_1, f15_5],
    ![f15_4, f15_2, f15_5],
    ![f15_5, f15_3, f15_5],
    ![f15_6, f15_4, f15_5],
    ![f15_0, f15_6, f15_6],
    ![f15_1, f15_0, f15_6],
    ![f15_2, f15_1, f15_6],
    ![f15_3, f15_2, f15_6],
    ![f15_4, f15_3, f15_6],
    ![f15_5, f15_4, f15_6],
    ![f15_6, f15_5, f15_6],
    ![f15_7, f15_7, f15_7],
    ![f15_8, f15_8, f15_7],
    ![f15_9, f15_9, f15_7],
    ![f15_10, f15_10, f15_7],
    ![f15_11, f15_11, f15_7],
    ![f15_12, f15_12, f15_7],
    ![f15_13, f15_13, f15_7],
    ![f15_14, f15_14, f15_7],
    ![f15_7, f15_8, f15_8],
    ![f15_8, f15_9, f15_8],
    ![f15_9, f15_10, f15_8],
    ![f15_10, f15_11, f15_8],
    ![f15_11, f15_12, f15_8],
    ![f15_12, f15_13, f15_8],
    ![f15_13, f15_14, f15_8],
    ![f15_14, f15_7, f15_8],
    ![f15_7, f15_9, f15_9],
    ![f15_8, f15_10, f15_9],
    ![f15_9, f15_11, f15_9],
    ![f15_10, f15_12, f15_9],
    ![f15_11, f15_13, f15_9],
    ![f15_12, f15_14, f15_9],
    ![f15_13, f15_7, f15_9],
    ![f15_14, f15_8, f15_9],
    ![f15_7, f15_10, f15_10],
    ![f15_8, f15_11, f15_10],
    ![f15_9, f15_12, f15_10],
    ![f15_10, f15_13, f15_10],
    ![f15_11, f15_14, f15_10],
    ![f15_12, f15_7, f15_10],
    ![f15_13, f15_8, f15_10],
    ![f15_14, f15_9, f15_10],
    ![f15_7, f15_11, f15_11],
    ![f15_8, f15_12, f15_11],
    ![f15_9, f15_13, f15_11],
    ![f15_10, f15_14, f15_11],
    ![f15_11, f15_7, f15_11],
    ![f15_12, f15_8, f15_11],
    ![f15_13, f15_9, f15_11],
    ![f15_14, f15_10, f15_11],
    ![f15_7, f15_12, f15_12],
    ![f15_8, f15_13, f15_12],
    ![f15_9, f15_14, f15_12],
    ![f15_10, f15_7, f15_12],
    ![f15_11, f15_8, f15_12],
    ![f15_12, f15_9, f15_12],
    ![f15_13, f15_10, f15_12],
    ![f15_14, f15_11, f15_12],
    ![f15_7, f15_13, f15_13],
    ![f15_8, f15_14, f15_13],
    ![f15_9, f15_7, f15_13],
    ![f15_10, f15_8, f15_13],
    ![f15_11, f15_9, f15_13],
    ![f15_12, f15_10, f15_13],
    ![f15_13, f15_11, f15_13],
    ![f15_14, f15_12, f15_13],
    ![f15_7, f15_14, f15_14],
    ![f15_8, f15_7, f15_14],
    ![f15_9, f15_8, f15_14],
    ![f15_10, f15_9, f15_14],
    ![f15_11, f15_10, f15_14],
    ![f15_12, f15_11, f15_14],
    ![f15_13, f15_12, f15_14],
    ![f15_14, f15_13, f15_14]}

set_option maxRecDepth 10000 in
private theorem fifteenary1531_card :
    fifteenary1531Code.card ≤ 113 := by
  covering_decide

set_option maxRecDepth 50000 in
set_option maxHeartbeats 64000000 in
private theorem fifteenary1531_covers :
    CoversFinset fifteenary1531Code 1 := by
  show ∀ x : QaryWord 15 3,
    ∃ c : QaryWord 15 3, c ∈ fifteenary1531Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitFifteenary1531UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitFifteenary1531Explicit : ExplicitQaryUpper 15 3 1 113 :=
  { code := fifteenary1531Code
    card_le := fifteenary1531_card
    covers := fifteenary1531_covers }

def smallExplicitFifteenary1531Upper (q n r : Nat) : Nat :=
  if q = 15 ∧ n = 3 ∧ r = 1 then 113 else trivialUpper q n r

theorem smallExplicitFifteenary1531Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitFifteenary1531Upper q n r) := by
  by_cases h : q = 15 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitFifteenary1531Upper] using
      smallExplicitFifteenary1531Explicit.toUpper
  · simpa [smallExplicitFifteenary1531Upper, h] using trivialUpper_valid q n r

def smallExplicitFifteenary1531UpperSource : UpperBoundSource where
  value := smallExplicitFifteenary1531Upper
  trace := fun q n r =>
    .primitive smallExplicitFifteenary1531UpperName
      (smallExplicitFifteenary1531Upper_valid q n r)

private def hexadecimal1631Code : Finset (QaryWord 16 3) :=
  {![f16_0, f16_0, f16_0],
    ![f16_1, f16_1, f16_0],
    ![f16_2, f16_2, f16_0],
    ![f16_3, f16_3, f16_0],
    ![f16_4, f16_4, f16_0],
    ![f16_5, f16_5, f16_0],
    ![f16_6, f16_6, f16_0],
    ![f16_7, f16_7, f16_0],
    ![f16_0, f16_1, f16_1],
    ![f16_1, f16_2, f16_1],
    ![f16_2, f16_3, f16_1],
    ![f16_3, f16_4, f16_1],
    ![f16_4, f16_5, f16_1],
    ![f16_5, f16_6, f16_1],
    ![f16_6, f16_7, f16_1],
    ![f16_7, f16_0, f16_1],
    ![f16_0, f16_2, f16_2],
    ![f16_1, f16_3, f16_2],
    ![f16_2, f16_4, f16_2],
    ![f16_3, f16_5, f16_2],
    ![f16_4, f16_6, f16_2],
    ![f16_5, f16_7, f16_2],
    ![f16_6, f16_0, f16_2],
    ![f16_7, f16_1, f16_2],
    ![f16_0, f16_3, f16_3],
    ![f16_1, f16_4, f16_3],
    ![f16_2, f16_5, f16_3],
    ![f16_3, f16_6, f16_3],
    ![f16_4, f16_7, f16_3],
    ![f16_5, f16_0, f16_3],
    ![f16_6, f16_1, f16_3],
    ![f16_7, f16_2, f16_3],
    ![f16_0, f16_4, f16_4],
    ![f16_1, f16_5, f16_4],
    ![f16_2, f16_6, f16_4],
    ![f16_3, f16_7, f16_4],
    ![f16_4, f16_0, f16_4],
    ![f16_5, f16_1, f16_4],
    ![f16_6, f16_2, f16_4],
    ![f16_7, f16_3, f16_4],
    ![f16_0, f16_5, f16_5],
    ![f16_1, f16_6, f16_5],
    ![f16_2, f16_7, f16_5],
    ![f16_3, f16_0, f16_5],
    ![f16_4, f16_1, f16_5],
    ![f16_5, f16_2, f16_5],
    ![f16_6, f16_3, f16_5],
    ![f16_7, f16_4, f16_5],
    ![f16_0, f16_6, f16_6],
    ![f16_1, f16_7, f16_6],
    ![f16_2, f16_0, f16_6],
    ![f16_3, f16_1, f16_6],
    ![f16_4, f16_2, f16_6],
    ![f16_5, f16_3, f16_6],
    ![f16_6, f16_4, f16_6],
    ![f16_7, f16_5, f16_6],
    ![f16_0, f16_7, f16_7],
    ![f16_1, f16_0, f16_7],
    ![f16_2, f16_1, f16_7],
    ![f16_3, f16_2, f16_7],
    ![f16_4, f16_3, f16_7],
    ![f16_5, f16_4, f16_7],
    ![f16_6, f16_5, f16_7],
    ![f16_7, f16_6, f16_7],
    ![f16_8, f16_8, f16_8],
    ![f16_9, f16_9, f16_8],
    ![f16_10, f16_10, f16_8],
    ![f16_11, f16_11, f16_8],
    ![f16_12, f16_12, f16_8],
    ![f16_13, f16_13, f16_8],
    ![f16_14, f16_14, f16_8],
    ![f16_15, f16_15, f16_8],
    ![f16_8, f16_9, f16_9],
    ![f16_9, f16_10, f16_9],
    ![f16_10, f16_11, f16_9],
    ![f16_11, f16_12, f16_9],
    ![f16_12, f16_13, f16_9],
    ![f16_13, f16_14, f16_9],
    ![f16_14, f16_15, f16_9],
    ![f16_15, f16_8, f16_9],
    ![f16_8, f16_10, f16_10],
    ![f16_9, f16_11, f16_10],
    ![f16_10, f16_12, f16_10],
    ![f16_11, f16_13, f16_10],
    ![f16_12, f16_14, f16_10],
    ![f16_13, f16_15, f16_10],
    ![f16_14, f16_8, f16_10],
    ![f16_15, f16_9, f16_10],
    ![f16_8, f16_11, f16_11],
    ![f16_9, f16_12, f16_11],
    ![f16_10, f16_13, f16_11],
    ![f16_11, f16_14, f16_11],
    ![f16_12, f16_15, f16_11],
    ![f16_13, f16_8, f16_11],
    ![f16_14, f16_9, f16_11],
    ![f16_15, f16_10, f16_11],
    ![f16_8, f16_12, f16_12],
    ![f16_9, f16_13, f16_12],
    ![f16_10, f16_14, f16_12],
    ![f16_11, f16_15, f16_12],
    ![f16_12, f16_8, f16_12],
    ![f16_13, f16_9, f16_12],
    ![f16_14, f16_10, f16_12],
    ![f16_15, f16_11, f16_12],
    ![f16_8, f16_13, f16_13],
    ![f16_9, f16_14, f16_13],
    ![f16_10, f16_15, f16_13],
    ![f16_11, f16_8, f16_13],
    ![f16_12, f16_9, f16_13],
    ![f16_13, f16_10, f16_13],
    ![f16_14, f16_11, f16_13],
    ![f16_15, f16_12, f16_13],
    ![f16_8, f16_14, f16_14],
    ![f16_9, f16_15, f16_14],
    ![f16_10, f16_8, f16_14],
    ![f16_11, f16_9, f16_14],
    ![f16_12, f16_10, f16_14],
    ![f16_13, f16_11, f16_14],
    ![f16_14, f16_12, f16_14],
    ![f16_15, f16_13, f16_14],
    ![f16_8, f16_15, f16_15],
    ![f16_9, f16_8, f16_15],
    ![f16_10, f16_9, f16_15],
    ![f16_11, f16_10, f16_15],
    ![f16_12, f16_11, f16_15],
    ![f16_13, f16_12, f16_15],
    ![f16_14, f16_13, f16_15],
    ![f16_15, f16_14, f16_15]}

set_option maxRecDepth 10000 in
private theorem hexadecimal1631_card :
    hexadecimal1631Code.card ≤ 128 := by
  covering_decide

set_option maxRecDepth 80000 in
set_option maxHeartbeats 128000000 in
private theorem hexadecimal1631_covers :
    CoversFinset hexadecimal1631Code 1 := by
  show ∀ x : QaryWord 16 3,
    ∃ c : QaryWord 16 3, c ∈ hexadecimal1631Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitHexadecimal1631UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitHexadecimal1631Explicit : ExplicitQaryUpper 16 3 1 128 :=
  { code := hexadecimal1631Code
    card_le := hexadecimal1631_card
    covers := hexadecimal1631_covers }

def smallExplicitHexadecimal1631Upper (q n r : Nat) : Nat :=
  if q = 16 ∧ n = 3 ∧ r = 1 then 128 else trivialUpper q n r

theorem smallExplicitHexadecimal1631Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitHexadecimal1631Upper q n r) := by
  by_cases h : q = 16 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitHexadecimal1631Upper] using
      smallExplicitHexadecimal1631Explicit.toUpper
  · simpa [smallExplicitHexadecimal1631Upper, h] using trivialUpper_valid q n r

def smallExplicitHexadecimal1631UpperSource : UpperBoundSource where
  value := smallExplicitHexadecimal1631Upper
  trace := fun q n r =>
    .primitive smallExplicitHexadecimal1631UpperName
      (smallExplicitHexadecimal1631Upper_valid q n r)

private def seventeenary1731Code : Finset (QaryWord 17 3) :=
  {![f17_0, f17_0, f17_0],
    ![f17_1, f17_1, f17_0],
    ![f17_2, f17_2, f17_0],
    ![f17_3, f17_3, f17_0],
    ![f17_4, f17_4, f17_0],
    ![f17_5, f17_5, f17_0],
    ![f17_6, f17_6, f17_0],
    ![f17_7, f17_7, f17_0],
    ![f17_0, f17_1, f17_1],
    ![f17_1, f17_2, f17_1],
    ![f17_2, f17_3, f17_1],
    ![f17_3, f17_4, f17_1],
    ![f17_4, f17_5, f17_1],
    ![f17_5, f17_6, f17_1],
    ![f17_6, f17_7, f17_1],
    ![f17_7, f17_0, f17_1],
    ![f17_0, f17_2, f17_2],
    ![f17_1, f17_3, f17_2],
    ![f17_2, f17_4, f17_2],
    ![f17_3, f17_5, f17_2],
    ![f17_4, f17_6, f17_2],
    ![f17_5, f17_7, f17_2],
    ![f17_6, f17_0, f17_2],
    ![f17_7, f17_1, f17_2],
    ![f17_0, f17_3, f17_3],
    ![f17_1, f17_4, f17_3],
    ![f17_2, f17_5, f17_3],
    ![f17_3, f17_6, f17_3],
    ![f17_4, f17_7, f17_3],
    ![f17_5, f17_0, f17_3],
    ![f17_6, f17_1, f17_3],
    ![f17_7, f17_2, f17_3],
    ![f17_0, f17_4, f17_4],
    ![f17_1, f17_5, f17_4],
    ![f17_2, f17_6, f17_4],
    ![f17_3, f17_7, f17_4],
    ![f17_4, f17_0, f17_4],
    ![f17_5, f17_1, f17_4],
    ![f17_6, f17_2, f17_4],
    ![f17_7, f17_3, f17_4],
    ![f17_0, f17_5, f17_5],
    ![f17_1, f17_6, f17_5],
    ![f17_2, f17_7, f17_5],
    ![f17_3, f17_0, f17_5],
    ![f17_4, f17_1, f17_5],
    ![f17_5, f17_2, f17_5],
    ![f17_6, f17_3, f17_5],
    ![f17_7, f17_4, f17_5],
    ![f17_0, f17_6, f17_6],
    ![f17_1, f17_7, f17_6],
    ![f17_2, f17_0, f17_6],
    ![f17_3, f17_1, f17_6],
    ![f17_4, f17_2, f17_6],
    ![f17_5, f17_3, f17_6],
    ![f17_6, f17_4, f17_6],
    ![f17_7, f17_5, f17_6],
    ![f17_0, f17_7, f17_7],
    ![f17_1, f17_0, f17_7],
    ![f17_2, f17_1, f17_7],
    ![f17_3, f17_2, f17_7],
    ![f17_4, f17_3, f17_7],
    ![f17_5, f17_4, f17_7],
    ![f17_6, f17_5, f17_7],
    ![f17_7, f17_6, f17_7],
    ![f17_8, f17_8, f17_8],
    ![f17_9, f17_9, f17_8],
    ![f17_10, f17_10, f17_8],
    ![f17_11, f17_11, f17_8],
    ![f17_12, f17_12, f17_8],
    ![f17_13, f17_13, f17_8],
    ![f17_14, f17_14, f17_8],
    ![f17_15, f17_15, f17_8],
    ![f17_16, f17_16, f17_8],
    ![f17_8, f17_9, f17_9],
    ![f17_9, f17_10, f17_9],
    ![f17_10, f17_11, f17_9],
    ![f17_11, f17_12, f17_9],
    ![f17_12, f17_13, f17_9],
    ![f17_13, f17_14, f17_9],
    ![f17_14, f17_15, f17_9],
    ![f17_15, f17_16, f17_9],
    ![f17_16, f17_8, f17_9],
    ![f17_8, f17_10, f17_10],
    ![f17_9, f17_11, f17_10],
    ![f17_10, f17_12, f17_10],
    ![f17_11, f17_13, f17_10],
    ![f17_12, f17_14, f17_10],
    ![f17_13, f17_15, f17_10],
    ![f17_14, f17_16, f17_10],
    ![f17_15, f17_8, f17_10],
    ![f17_16, f17_9, f17_10],
    ![f17_8, f17_11, f17_11],
    ![f17_9, f17_12, f17_11],
    ![f17_10, f17_13, f17_11],
    ![f17_11, f17_14, f17_11],
    ![f17_12, f17_15, f17_11],
    ![f17_13, f17_16, f17_11],
    ![f17_14, f17_8, f17_11],
    ![f17_15, f17_9, f17_11],
    ![f17_16, f17_10, f17_11],
    ![f17_8, f17_12, f17_12],
    ![f17_9, f17_13, f17_12],
    ![f17_10, f17_14, f17_12],
    ![f17_11, f17_15, f17_12],
    ![f17_12, f17_16, f17_12],
    ![f17_13, f17_8, f17_12],
    ![f17_14, f17_9, f17_12],
    ![f17_15, f17_10, f17_12],
    ![f17_16, f17_11, f17_12],
    ![f17_8, f17_13, f17_13],
    ![f17_9, f17_14, f17_13],
    ![f17_10, f17_15, f17_13],
    ![f17_11, f17_16, f17_13],
    ![f17_12, f17_8, f17_13],
    ![f17_13, f17_9, f17_13],
    ![f17_14, f17_10, f17_13],
    ![f17_15, f17_11, f17_13],
    ![f17_16, f17_12, f17_13],
    ![f17_8, f17_14, f17_14],
    ![f17_9, f17_15, f17_14],
    ![f17_10, f17_16, f17_14],
    ![f17_11, f17_8, f17_14],
    ![f17_12, f17_9, f17_14],
    ![f17_13, f17_10, f17_14],
    ![f17_14, f17_11, f17_14],
    ![f17_15, f17_12, f17_14],
    ![f17_16, f17_13, f17_14],
    ![f17_8, f17_15, f17_15],
    ![f17_9, f17_16, f17_15],
    ![f17_10, f17_8, f17_15],
    ![f17_11, f17_9, f17_15],
    ![f17_12, f17_10, f17_15],
    ![f17_13, f17_11, f17_15],
    ![f17_14, f17_12, f17_15],
    ![f17_15, f17_13, f17_15],
    ![f17_16, f17_14, f17_15],
    ![f17_8, f17_16, f17_16],
    ![f17_9, f17_8, f17_16],
    ![f17_10, f17_9, f17_16],
    ![f17_11, f17_10, f17_16],
    ![f17_12, f17_11, f17_16],
    ![f17_13, f17_12, f17_16],
    ![f17_14, f17_13, f17_16],
    ![f17_15, f17_14, f17_16],
    ![f17_16, f17_15, f17_16]}

set_option maxRecDepth 10000 in
private theorem seventeenary1731_card :
    seventeenary1731Code.card ≤ 145 := by
  covering_decide

set_option maxRecDepth 120000 in
set_option maxHeartbeats 256000000 in
private theorem seventeenary1731_covers :
    CoversFinset seventeenary1731Code 1 := by
  show ∀ x : QaryWord 17 3,
    ∃ c : QaryWord 17 3, c ∈ seventeenary1731Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSeventeenary1731UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSeventeenary1731Explicit : ExplicitQaryUpper 17 3 1 145 :=
  { code := seventeenary1731Code
    card_le := seventeenary1731_card
    covers := seventeenary1731_covers }

def smallExplicitSeventeenary1731Upper (q n r : Nat) : Nat :=
  if q = 17 ∧ n = 3 ∧ r = 1 then 145 else trivialUpper q n r

theorem smallExplicitSeventeenary1731Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSeventeenary1731Upper q n r) := by
  by_cases h : q = 17 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSeventeenary1731Upper] using
      smallExplicitSeventeenary1731Explicit.toUpper
  · simpa [smallExplicitSeventeenary1731Upper, h] using trivialUpper_valid q n r

def smallExplicitSeventeenary1731UpperSource : UpperBoundSource where
  value := smallExplicitSeventeenary1731Upper
  trace := fun q n r =>
    .primitive smallExplicitSeventeenary1731UpperName
      (smallExplicitSeventeenary1731Upper_valid q n r)

private def eighteenary1831Code : Finset (QaryWord 18 3) :=
  {![f18_0, f18_0, f18_0],
    ![f18_1, f18_1, f18_0],
    ![f18_2, f18_2, f18_0],
    ![f18_3, f18_3, f18_0],
    ![f18_4, f18_4, f18_0],
    ![f18_5, f18_5, f18_0],
    ![f18_6, f18_6, f18_0],
    ![f18_7, f18_7, f18_0],
    ![f18_8, f18_8, f18_0],
    ![f18_0, f18_1, f18_1],
    ![f18_1, f18_2, f18_1],
    ![f18_2, f18_3, f18_1],
    ![f18_3, f18_4, f18_1],
    ![f18_4, f18_5, f18_1],
    ![f18_5, f18_6, f18_1],
    ![f18_6, f18_7, f18_1],
    ![f18_7, f18_8, f18_1],
    ![f18_8, f18_0, f18_1],
    ![f18_0, f18_2, f18_2],
    ![f18_1, f18_3, f18_2],
    ![f18_2, f18_4, f18_2],
    ![f18_3, f18_5, f18_2],
    ![f18_4, f18_6, f18_2],
    ![f18_5, f18_7, f18_2],
    ![f18_6, f18_8, f18_2],
    ![f18_7, f18_0, f18_2],
    ![f18_8, f18_1, f18_2],
    ![f18_0, f18_3, f18_3],
    ![f18_1, f18_4, f18_3],
    ![f18_2, f18_5, f18_3],
    ![f18_3, f18_6, f18_3],
    ![f18_4, f18_7, f18_3],
    ![f18_5, f18_8, f18_3],
    ![f18_6, f18_0, f18_3],
    ![f18_7, f18_1, f18_3],
    ![f18_8, f18_2, f18_3],
    ![f18_0, f18_4, f18_4],
    ![f18_1, f18_5, f18_4],
    ![f18_2, f18_6, f18_4],
    ![f18_3, f18_7, f18_4],
    ![f18_4, f18_8, f18_4],
    ![f18_5, f18_0, f18_4],
    ![f18_6, f18_1, f18_4],
    ![f18_7, f18_2, f18_4],
    ![f18_8, f18_3, f18_4],
    ![f18_0, f18_5, f18_5],
    ![f18_1, f18_6, f18_5],
    ![f18_2, f18_7, f18_5],
    ![f18_3, f18_8, f18_5],
    ![f18_4, f18_0, f18_5],
    ![f18_5, f18_1, f18_5],
    ![f18_6, f18_2, f18_5],
    ![f18_7, f18_3, f18_5],
    ![f18_8, f18_4, f18_5],
    ![f18_0, f18_6, f18_6],
    ![f18_1, f18_7, f18_6],
    ![f18_2, f18_8, f18_6],
    ![f18_3, f18_0, f18_6],
    ![f18_4, f18_1, f18_6],
    ![f18_5, f18_2, f18_6],
    ![f18_6, f18_3, f18_6],
    ![f18_7, f18_4, f18_6],
    ![f18_8, f18_5, f18_6],
    ![f18_0, f18_7, f18_7],
    ![f18_1, f18_8, f18_7],
    ![f18_2, f18_0, f18_7],
    ![f18_3, f18_1, f18_7],
    ![f18_4, f18_2, f18_7],
    ![f18_5, f18_3, f18_7],
    ![f18_6, f18_4, f18_7],
    ![f18_7, f18_5, f18_7],
    ![f18_8, f18_6, f18_7],
    ![f18_0, f18_8, f18_8],
    ![f18_1, f18_0, f18_8],
    ![f18_2, f18_1, f18_8],
    ![f18_3, f18_2, f18_8],
    ![f18_4, f18_3, f18_8],
    ![f18_5, f18_4, f18_8],
    ![f18_6, f18_5, f18_8],
    ![f18_7, f18_6, f18_8],
    ![f18_8, f18_7, f18_8],
    ![f18_9, f18_9, f18_9],
    ![f18_10, f18_10, f18_9],
    ![f18_11, f18_11, f18_9],
    ![f18_12, f18_12, f18_9],
    ![f18_13, f18_13, f18_9],
    ![f18_14, f18_14, f18_9],
    ![f18_15, f18_15, f18_9],
    ![f18_16, f18_16, f18_9],
    ![f18_17, f18_17, f18_9],
    ![f18_9, f18_10, f18_10],
    ![f18_10, f18_11, f18_10],
    ![f18_11, f18_12, f18_10],
    ![f18_12, f18_13, f18_10],
    ![f18_13, f18_14, f18_10],
    ![f18_14, f18_15, f18_10],
    ![f18_15, f18_16, f18_10],
    ![f18_16, f18_17, f18_10],
    ![f18_17, f18_9, f18_10],
    ![f18_9, f18_11, f18_11],
    ![f18_10, f18_12, f18_11],
    ![f18_11, f18_13, f18_11],
    ![f18_12, f18_14, f18_11],
    ![f18_13, f18_15, f18_11],
    ![f18_14, f18_16, f18_11],
    ![f18_15, f18_17, f18_11],
    ![f18_16, f18_9, f18_11],
    ![f18_17, f18_10, f18_11],
    ![f18_9, f18_12, f18_12],
    ![f18_10, f18_13, f18_12],
    ![f18_11, f18_14, f18_12],
    ![f18_12, f18_15, f18_12],
    ![f18_13, f18_16, f18_12],
    ![f18_14, f18_17, f18_12],
    ![f18_15, f18_9, f18_12],
    ![f18_16, f18_10, f18_12],
    ![f18_17, f18_11, f18_12],
    ![f18_9, f18_13, f18_13],
    ![f18_10, f18_14, f18_13],
    ![f18_11, f18_15, f18_13],
    ![f18_12, f18_16, f18_13],
    ![f18_13, f18_17, f18_13],
    ![f18_14, f18_9, f18_13],
    ![f18_15, f18_10, f18_13],
    ![f18_16, f18_11, f18_13],
    ![f18_17, f18_12, f18_13],
    ![f18_9, f18_14, f18_14],
    ![f18_10, f18_15, f18_14],
    ![f18_11, f18_16, f18_14],
    ![f18_12, f18_17, f18_14],
    ![f18_13, f18_9, f18_14],
    ![f18_14, f18_10, f18_14],
    ![f18_15, f18_11, f18_14],
    ![f18_16, f18_12, f18_14],
    ![f18_17, f18_13, f18_14],
    ![f18_9, f18_15, f18_15],
    ![f18_10, f18_16, f18_15],
    ![f18_11, f18_17, f18_15],
    ![f18_12, f18_9, f18_15],
    ![f18_13, f18_10, f18_15],
    ![f18_14, f18_11, f18_15],
    ![f18_15, f18_12, f18_15],
    ![f18_16, f18_13, f18_15],
    ![f18_17, f18_14, f18_15],
    ![f18_9, f18_16, f18_16],
    ![f18_10, f18_17, f18_16],
    ![f18_11, f18_9, f18_16],
    ![f18_12, f18_10, f18_16],
    ![f18_13, f18_11, f18_16],
    ![f18_14, f18_12, f18_16],
    ![f18_15, f18_13, f18_16],
    ![f18_16, f18_14, f18_16],
    ![f18_17, f18_15, f18_16],
    ![f18_9, f18_17, f18_17],
    ![f18_10, f18_9, f18_17],
    ![f18_11, f18_10, f18_17],
    ![f18_12, f18_11, f18_17],
    ![f18_13, f18_12, f18_17],
    ![f18_14, f18_13, f18_17],
    ![f18_15, f18_14, f18_17],
    ![f18_16, f18_15, f18_17],
    ![f18_17, f18_16, f18_17]}

set_option maxRecDepth 20000 in
private theorem eighteenary1831_card :
    eighteenary1831Code.card ≤ 162 := by
  covering_decide

set_option maxRecDepth 240000 in
set_option maxHeartbeats 512000000 in
private theorem eighteenary1831_covers :
    CoversFinset eighteenary1831Code 1 := by
  show ∀ x : QaryWord 18 3,
    ∃ c : QaryWord 18 3, c ∈ eighteenary1831Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitEighteenary1831UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitEighteenary1831Explicit : ExplicitQaryUpper 18 3 1 162 :=
  { code := eighteenary1831Code
    card_le := eighteenary1831_card
    covers := eighteenary1831_covers }

def smallExplicitEighteenary1831Upper (q n r : Nat) : Nat :=
  if q = 18 ∧ n = 3 ∧ r = 1 then 162 else trivialUpper q n r

theorem smallExplicitEighteenary1831Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitEighteenary1831Upper q n r) := by
  by_cases h : q = 18 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitEighteenary1831Upper] using
      smallExplicitEighteenary1831Explicit.toUpper
  · simpa [smallExplicitEighteenary1831Upper, h] using trivialUpper_valid q n r

def smallExplicitEighteenary1831UpperSource : UpperBoundSource where
  value := smallExplicitEighteenary1831Upper
  trace := fun q n r =>
    .primitive smallExplicitEighteenary1831UpperName
      (smallExplicitEighteenary1831Upper_valid q n r)

end Database
end CoveringCodes
