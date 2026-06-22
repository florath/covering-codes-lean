import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.SmallExplicitUpper.K_9_3_1
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_9(9,3)

This module formalizes the product structure in
`q9-n9-r3-29889-known-bound-lean-certificate-notes.md` and the archived
candidate source `gf9_mixed_len6_len3_product_cover`.

The length-nine construction is the direct product of a length-six radius-two
linear block over GF(9) with the existing length-three radius-one nonary block
of size `41`.  The length-six block is the kernel of three GF(9) parity-check
equations and has `9^3 = 729` words, giving `729 * 41 = 29889`.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f9_1 : Fin 9 := ⟨1, by decide⟩
private abbrev f9_2 : Fin 9 := ⟨2, by decide⟩
private abbrev f9_3 : Fin 9 := ⟨3, by decide⟩
private abbrev f9_4 : Fin 9 := ⟨4, by decide⟩
private abbrev f9_5 : Fin 9 := ⟨5, by decide⟩
private abbrev f9_6 : Fin 9 := ⟨6, by decide⟩
private abbrev f9_7 : Fin 9 := ⟨7, by decide⟩
private abbrev f9_8 : Fin 9 := ⟨8, by decide⟩

/-- GF(9) addition for the encoding `a + 3*b`, with `x^2 = 2` over GF(3). -/
private def gf9Add (a b : Fin 9) : Fin 9 :=
  ⟨((a.val % 3 + b.val % 3) % 3) + 3 * (((a.val / 3 + b.val / 3) % 3)), by
    have h0 : ((a.val % 3 + b.val % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    have h1 : ((a.val / 3 + b.val / 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    omega⟩

private def gf9Neg (a : Fin 9) : Fin 9 :=
  ⟨((3 - a.val % 3) % 3) + 3 * ((3 - (a.val / 3) % 3) % 3), by
    have h0 : ((3 - a.val % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    have h1 : ((3 - (a.val / 3) % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    omega⟩

private def gf9Sub (a b : Fin 9) : Fin 9 :=
  gf9Add a (gf9Neg b)

private def gf9Mul (a b : Fin 9) : Fin 9 :=
  ⟨(((a.val % 3) * (b.val % 3) + 2 * (a.val / 3) * (b.val / 3)) % 3) +
      3 * ((((a.val % 3) * (b.val / 3) + (a.val / 3) * (b.val % 3)) % 3)), by
    have h0 : (((a.val % 3) * (b.val % 3) + 2 * (a.val / 3) * (b.val / 3)) % 3) < 3 :=
      Nat.mod_lt _ (by decide)
    have h1 :
        (((a.val % 3) * (b.val / 3) + (a.val / 3) * (b.val % 3)) % 3) < 3 :=
      Nat.mod_lt _ (by decide)
    omega⟩

private def gf9Add3 (a b c : Fin 9) : Fin 9 :=
  gf9Add (gf9Add a b) c

private def gf9Add4 (a b c d : Fin 9) : Fin 9 :=
  gf9Add (gf9Add3 a b c) d

private theorem gf9Sub_self (a : Fin 9) : gf9Sub a a = f9_0 := by
  fin_cases a <;> native_decide

private theorem gf9Sub_zero (a : Fin 9) : gf9Sub a f9_0 = a := by
  fin_cases a <;> native_decide

private theorem gf9Add_sub_add (a b c d : Fin 9) :
    gf9Add (gf9Sub a b) (gf9Sub c d) = gf9Sub (gf9Add a c) (gf9Add b d) := by
  revert a b c d
  covering_decide

private theorem gf9Mul_sub (a b c : Fin 9) :
    gf9Mul a (gf9Sub b c) = gf9Sub (gf9Mul a b) (gf9Mul a c) := by
  revert a b c
  covering_decide

private theorem gf9Add4_sub (a b c d a' b' c' d' : Fin 9) :
    gf9Add4 (gf9Sub a a') (gf9Sub b b') (gf9Sub c c') (gf9Sub d d') =
      gf9Sub (gf9Add4 a b c d) (gf9Add4 a' b' c' d') := by
  unfold gf9Add4 gf9Add3
  rw [gf9Add_sub_add, gf9Add_sub_add, gf9Add_sub_add]

private theorem row0_zero_solve (p a b c : Fin 9)
    (h : gf9Add4 p (gf9Mul f9_2 a) (gf9Mul f9_8 b) (gf9Mul f9_7 c) = f9_0) :
    gf9Neg (gf9Add3 (gf9Mul f9_2 a) (gf9Mul f9_8 b) (gf9Mul f9_7 c)) = p := by
  revert p a b c
  covering_decide

private theorem row1_zero_solve (p a b c : Fin 9)
    (h : gf9Add4 p a (gf9Mul f9_3 b) (gf9Mul f9_4 c) = f9_0) :
    gf9Neg (gf9Add3 a (gf9Mul f9_3 b) (gf9Mul f9_4 c)) = p := by
  revert p a b c
  covering_decide

private theorem row2_zero_solve (p a b c : Fin 9)
    (h : gf9Add4 p a (gf9Mul f9_2 b) (gf9Mul f9_2 c) = f9_0) :
    gf9Neg (gf9Add3 a (gf9Mul f9_2 b) (gf9Mul f9_2 c)) = p := by
  revert p a b c
  covering_decide

private def linearWord (free : QaryWord 9 3) : QaryWord 9 6 :=
  fun i =>
    if i.val = 0 then
      gf9Neg (gf9Add3 (gf9Mul f9_2 (free f3_0)) (gf9Mul f9_8 (free f3_1))
        (gf9Mul f9_7 (free f3_2)))
    else if i.val = 1 then
      gf9Neg (gf9Add3 (free f3_0) (gf9Mul f9_3 (free f3_1))
        (gf9Mul f9_4 (free f3_2)))
    else if i.val = 2 then
      gf9Neg (gf9Add3 (free f3_0) (gf9Mul f9_2 (free f3_1))
        (gf9Mul f9_2 (free f3_2)))
    else if i.val = 3 then free f3_0
    else if i.val = 4 then free f3_1
    else free f3_2

private def linearFree (w : QaryWord 9 6) : QaryWord 9 3 := fun i =>
  if i.val = 0 then w 3
  else if i.val = 1 then w 4
  else w 5

private def syn0 (w : QaryWord 9 6) : Fin 9 :=
  gf9Add4 (w 0) (gf9Mul f9_2 (w 3)) (gf9Mul f9_8 (w 4)) (gf9Mul f9_7 (w 5))

private def syn1 (w : QaryWord 9 6) : Fin 9 :=
  gf9Add4 (w 1) (w 3) (gf9Mul f9_3 (w 4)) (gf9Mul f9_4 (w 5))

private def syn2 (w : QaryWord 9 6) : Fin 9 :=
  gf9Add4 (w 2) (w 3) (gf9Mul f9_2 (w 4)) (gf9Mul f9_2 (w 5))

private def IsLinearWord (w : QaryWord 9 6) : Prop :=
  syn0 w = f9_0 ∧ syn1 w = f9_0 ∧ syn2 w = f9_0

private instance (w : QaryWord 9 6) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 9 6)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2⟩
  have hw0 := row0_zero_solve (w 0) (w 3) (w 4) (w 5) (by simpa [syn0] using h0)
  have hw1 := row1_zero_solve (w 1) (w 3) (w 4) (w 5) (by simpa [syn1] using h1)
  have hw2 := row2_zero_solve (w 2) (w 3) (w 4) (w 5) (by simpa [syn2] using h2)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1, hw2]

private def linearCode : Finset (QaryWord 9 6) :=
  (Finset.univ : Finset (QaryWord 9 3)).image linearWord

private def packSyndrome (s0 s1 s2 : Fin 9) : Fin 729 :=
  ⟨s0.val + 9 * s1.val + 81 * s2.val, by omega⟩

private def syndromeIndex (w : QaryWord 9 6) : Fin 729 :=
  packSyndrome (syn0 w) (syn1 w) (syn2 w)

private theorem packSyndrome_inj
    (a0 a1 a2 b0 b1 b2 : Fin 9)
    (h : packSyndrome a0 a1 a2 = packSyndrome b0 b1 b2) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2⟩

private def digit9 (value place : Nat) : Fin 9 :=
  ⟨(value / place) % 9, by omega⟩

private def decodeCorrection (value : Nat) : QaryWord 9 6 :=
  fun i =>
    if i.val = 0 then digit9 value 59049
    else if i.val = 1 then digit9 value 6561
    else if i.val = 2 then digit9 value 729
    else if i.val = 3 then digit9 value 81
    else if i.val = 4 then digit9 value 9
    else digit9 value 1

private def correctionData : Array Nat := #[
  0, 59049, 118098, 177147, 236196, 295245, 354294, 413343, 472392, 6561, 65610, 124659, 183708, 242757, 301806, 360855,
  419904, 478953, 13122, 72171, 131220, 190269, 249318, 308367, 367416, 426465, 485514, 19683, 78732, 137781, 196830, 255879,
  314928, 373977, 433026, 492075, 26244, 85293, 144342, 203391, 262440, 321489, 380538, 439587, 498636, 32805, 91854, 150903,
  209952, 269001, 328050, 387099, 446148, 505197, 39366, 98415, 157464, 216513, 275562, 334611, 393660, 452709, 511758, 45927,
  104976, 164025, 223074, 282123, 341172, 400221, 459270, 518319, 52488, 111537, 170586, 229635, 288684, 347733, 406782, 465831,
  524880, 729, 59778, 118827, 177876, 236925, 295974, 355023, 414072, 473121, 59130, 118179, 81, 236277, 295326, 177228,
  413424, 472473, 354375, 13851, 1620, 6642, 5839, 32823, 19685, 409, 2943, 288, 20412, 4382, 32886, 351,
  39384, 45929, 5346, 51, 1467, 26973, 5895, 19764, 248, 45945, 52490, 43, 1459, 4698, 33534, 573,
  26325, 3681, 52506, 39368, 171, 6237, 35, 472410, 354312, 413361, 118116, 18, 59067, 295263, 177165, 236214,
  46656, 441, 39447, 10, 6579, 13124, 4446, 655, 5109, 413345, 472394, 354296, 59051, 118100, 2, 236198,
  295247, 177149, 1458, 60507, 119556, 178605, 237654, 296703, 355752, 414801, 473850, 8019, 13284, 810, 575, 549,
  5886, 2921, 39367, 45936, 118260, 162, 59211, 295407, 177309, 236358, 472554, 354456, 413505, 236205, 295254, 177156,
  413352, 472401, 354303, 59058, 118107, 9, 295246, 177148, 236197, 472393, 354295, 413344, 118099, 1, 59050, 34263,
  19845, 639, 2223, 3648, 329, 20, 6562, 13131, 40824, 46089, 2191, 4131, 747, 66, 702, 32806,
  19692, 47385, 52650, 408, 99, 58, 3483, 5175, 19684, 26253, 53946, 39528, 2961, 77, 2835, 731,
  493, 26245, 32814, 2187, 61236, 120285, 179334, 238383, 297432, 356481, 415530, 474579, 413397, 472446, 354348, 59103,
  118152, 54, 236250, 295299, 177201, 15309, 3078, 423, 736, 73, 6615, 52731, 4401, 26250, 177390, 236439,
  295488, 354537, 413586, 472635, 243, 59292, 118341, 28431, 792, 30, 693, 571, 19737, 6804, 2917, 39372,
  34992, 49, 170, 5139, 4377, 26298, 13365, 1134, 45933, 41553, 653, 5107, 4860, 3663, 52542, 19926,
  234, 13128, 236202, 295251, 177153, 413349, 472398, 354300, 59055, 118104, 6, 54675, 513, 5877, 325, 5751,
  45981, 33048, 25, 6567, 2916, 61965, 121014, 180063, 239112, 298161, 357210, 416259, 475308, 9477, 45935, 2268,
  48, 169, 783, 19755, 684, 39690, 16038, 52496, 245, 1465, 135, 40, 26316, 5130, 46251, 118106,
  8, 59057, 295253, 177155, 236204, 472400, 354302, 413351, 236520, 295569, 177471, 413667, 472716, 354618, 59373, 118422,
  324, 35721, 13130, 16, 5868, 5106, 531, 45999, 1863, 6885, 42282, 19691, 5836, 5589, 2205, 406,
  13194, 56, 33129, 177219, 236268, 295317, 354366, 413415, 472464, 72, 59121, 118170, 55404, 32813, 4419, 414,
  6480, 2189, 6633, 87, 26568, 3645, 62694, 121743, 180792, 239841, 298890, 357939, 416988, 476037, 10206, 39429,
  2997, 13129, 15, 1512, 5108, 52893, 651, 354301, 413350, 472399, 7, 59056, 118105, 177154, 236203, 295252,
  23328, 13185, 74, 26251, 612, 490, 1701, 6966, 2196, 118161, 63, 59112, 295308, 177210, 236259, 472455,
  354357, 413406, 295650, 177552, 236601, 472797, 354699, 413748, 118503, 405, 59454, 43011, 32868, 4378, 45934, 2934,
  252, 168, 26649, 50, 49572, 19746, 675, 52495, 244, 5670, 801, 33210, 1464, 56133, 26307, 5148,
  39373, 5022, 2918, 31, 20088, 153, 4374, 63423, 122472, 181521, 240570, 299619, 358668, 417717, 476766, 10935,
  576, 5913, 26730, 52491, 2241, 1463, 13149, 38, 295272, 177174, 236223, 472419, 354321, 413370, 118125, 27,
  59076, 24057, 3653, 331, 39852, 6564, 117, 2430, 26271, 5112, 30618, 2979, 297, 46413, 13125, 14,
  650, 32832, 3969, 472395, 354297, 413346, 118101, 3, 59052, 295248, 177150, 236199, 354780, 413829, 472878, 486,
  59535, 118584, 177633, 236682, 295731, 50301, 85, 71, 7047, 32808, 2025, 3717, 52515, 2193, 56862, 60,
  1503, 13608, 19686, 5834, 387, 39393, 413, 5103, 64152, 123201, 182250, 241299, 300348, 359397, 418446, 477495,
  177152, 236201, 295250, 354299, 413348, 472397, 5, 59054, 118103, 18225, 5994, 19728, 3652, 330, 26811, 6566,
  756, 21, 24786, 2195, 45972, 84, 70, 53055, 32810, 504, 5841, 31347, 3708, 52533, 62, 198,
  39933, 19688, 5833, 2511, 37908, 378, 39411, 1494, 732, 46494, 26249, 4050, 488, 44469, 37, 6606,
  1215, 4392, 13689, 52493, 251, 468, 413910, 472959, 354861, 59616, 118665, 567, 236763, 295812, 177714, 59094,
  118143, 45, 236241, 295290, 177192, 413388, 472437, 354339, 5832, 64881, 123930, 182979, 242028, 301077, 360126, 419175,
  478224, 12393, 487, 26248, 52524, 33453, 3699, 734, 80, 189, 18954, 4536, 32809, 39402, 20331, 396,
  69, 1485, 86, 25515, 2924, 39370, 6597, 46575, 28, 3888, 569, 4383, 32076, 2250, 45931, 13158,
  53136, 165, 585, 4375, 3240, 354330, 413379, 472428, 36, 59085, 118134, 177183, 236232, 295281, 59053, 118102,
  4, 236200, 295249, 177151, 413347, 472396, 354298, 51759, 23, 6565, 32841, 13770, 1296, 2988, 306, 3651,
  473040, 354942, 413991, 118746, 648, 59697, 295893, 177795, 236844
]

private def syndromeCorrection (s : Fin 729) : QaryWord 9 6 :=
  decodeCorrection (correctionData.getD s.val 0)

private def support (w : QaryWord 9 6) : Finset (Fin 6) :=
  Finset.univ.filter (fun i => w i ≠ f9_0)

set_option maxRecDepth 50000 in
set_option maxHeartbeats 2000000 in
private theorem table_syndrome : ∀ s : Fin 729, syndromeIndex (syndromeCorrection s) = s := by
  native_decide

set_option maxRecDepth 50000 in
set_option maxHeartbeats 2000000 in
private theorem table_weight : ∀ s : Fin 729, (support (syndromeCorrection s)).card ≤ 2 := by
  native_decide

private def subtractError (x e : QaryWord 9 6) : QaryWord 9 6 :=
  fun i => gf9Sub (x i) (e i)

private theorem syn0_sub (x e : QaryWord 9 6) :
    syn0 (subtractError x e) = gf9Sub (syn0 x) (syn0 e) := by
  calc
    syn0 (subtractError x e)
        = gf9Add4 (gf9Sub (x 0) (e 0))
            (gf9Sub (gf9Mul f9_2 (x 3)) (gf9Mul f9_2 (e 3)))
            (gf9Sub (gf9Mul f9_8 (x 4)) (gf9Mul f9_8 (e 4)))
            (gf9Sub (gf9Mul f9_7 (x 5)) (gf9Mul f9_7 (e 5))) := by
          simp [syn0, subtractError, gf9Mul_sub]
    _ = gf9Sub (syn0 x) (syn0 e) := by
          simp [syn0, gf9Add4_sub]

private theorem syn1_sub (x e : QaryWord 9 6) :
    syn1 (subtractError x e) = gf9Sub (syn1 x) (syn1 e) := by
  calc
    syn1 (subtractError x e)
        = gf9Add4 (gf9Sub (x 1) (e 1)) (gf9Sub (x 3) (e 3))
            (gf9Sub (gf9Mul f9_3 (x 4)) (gf9Mul f9_3 (e 4)))
            (gf9Sub (gf9Mul f9_4 (x 5)) (gf9Mul f9_4 (e 5))) := by
          simp [syn1, subtractError, gf9Mul_sub]
    _ = gf9Sub (syn1 x) (syn1 e) := by
          simp [syn1, gf9Add4_sub]

private theorem syn2_sub (x e : QaryWord 9 6) :
    syn2 (subtractError x e) = gf9Sub (syn2 x) (syn2 e) := by
  calc
    syn2 (subtractError x e)
        = gf9Add4 (gf9Sub (x 2) (e 2)) (gf9Sub (x 3) (e 3))
            (gf9Sub (gf9Mul f9_2 (x 4)) (gf9Mul f9_2 (e 4)))
            (gf9Sub (gf9Mul f9_2 (x 5)) (gf9Mul f9_2 (e 5))) := by
          simp [syn2, subtractError, gf9Mul_sub]
    _ = gf9Sub (syn2 x) (syn2 e) := by
          simp [syn2, gf9Add4_sub]

private theorem subtractError_isLinear_of_matching (x e : QaryWord 9 6)
    (h0 : syn0 e = syn0 x) (h1 : syn1 e = syn1 x) (h2 : syn2 e = syn2 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · rw [syn0_sub, h0, gf9Sub_self]
  constructor
  · rw [syn1_sub, h1, gf9Sub_self]
  · rw [syn2_sub, h2, gf9Sub_self]

private theorem subtractError_dist_le_of_support (x e : QaryWord 9 6)
    (hw : (support e).card ≤ 2) :
    hammingDist x (subtractError x e) ≤ 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f9_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (gf9Sub_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i).card := rfl
    _ ≤ (support e).card := Finset.card_le_card hsubset
    _ ≤ 2 := hw

private def linearRepair (x : QaryWord 9 6) : QaryWord 9 6 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 9 6) : IsLinearWord (linearRepair x) := by
  let e := syndromeCorrection (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using table_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (syn0 e) (syn1 e) (syn2 e) (syn0 x) (syn1 x) (syn2 x)
    (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0, h1, h2⟩
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2

private theorem linearRepair_dist (x : QaryWord 9 6) : hammingDist x (linearRepair x) ≤ 2 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 2 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩

private theorem linearCode_card : linearCode.card ≤ 729 := by
  calc
    linearCode.card ≤ (Finset.univ : Finset (QaryWord 9 3)).card := by
      simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 9 3)))
    _ = 729 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

private def linearHeadExplicit : ExplicitQaryUpper 9 6 2 729 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

private theorem knownBoundQ9N9R3Cert :
    QaryKUpper 9 9 3 29889 := by
  have h := upper_direct_product
    (q := 9) (n₁ := 6) (n₂ := 3) (r₁ := 2) (r₂ := 1) (U₁ := 729) (U₂ := 41)
    linearHeadExplicit.toUpper smallExplicitNonary931Explicit.toUpper
  norm_num at h
  simpa using h

def knownBoundQ9N9R3UpperName : String :=
  "lean_known_bounds_q9_n9_r3_gf9_product"

def knownBoundQ9N9R3Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 9 ∧ r = 3 then 29889 else trivialUpper q n r

theorem knownBoundQ9N9R3Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ9N9R3Upper q n r) := by
  by_cases h : q = 9 ∧ n = 9 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ9N9R3Upper] using knownBoundQ9N9R3Cert
  · simpa [knownBoundQ9N9R3Upper, h] using trivialUpper_valid q n r

def knownBoundQ9N9R3UpperSource : UpperBoundSource where
  value := knownBoundQ9N9R3Upper
  trace := fun q n r =>
    .primitive knownBoundQ9N9R3UpperName (knownBoundQ9N9R3Upper_valid q n r)

end Database
end CoveringCodes
