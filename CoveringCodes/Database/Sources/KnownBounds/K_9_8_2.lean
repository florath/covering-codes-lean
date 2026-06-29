import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_9(8,2)

This module formalizes the structural linear/syndrome construction from
`q9-n8-r2-59049-known-bound-lean-certificate-notes.md` and the archived
candidate source `linear_cover`.

The code is a systematic `9`-ary linear code with five free coordinates and
three parity-check equations over `ZMod 9`.  A finite syndrome repair search
proves that every syndrome has a correction of support at most two.
-/

namespace CoveringCodes
namespace Database

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f5_0 : Fin 5 := ⟨0, by decide⟩
private abbrev f5_1 : Fin 5 := ⟨1, by decide⟩
private abbrev f5_2 : Fin 5 := ⟨2, by decide⟩
private abbrev f5_3 : Fin 5 := ⟨3, by decide⟩
private abbrev f5_4 : Fin 5 := ⟨4, by decide⟩

private def add9 (a b : Fin 9) : Fin 9 := ⟨(a.val + b.val) % 9, by omega⟩
private def sub9 (a b : Fin 9) : Fin 9 := ⟨(9 + a.val - b.val) % 9, by omega⟩
private def mul9 (k : Nat) (a : Fin 9) : Fin 9 := ⟨(k * a.val) % 9, by omega⟩
private def neg9 (a : Fin 9) : Fin 9 := ⟨(9 - a.val) % 9, by omega⟩
private def asZ9 (a : Fin 9) : ZMod 9 := a.val
private def z9Component (z : ZMod 9) : Fin 9 :=
  ⟨z.val, ZMod.val_lt z⟩

private def add9_5 (a b c d e : Fin 9) : Fin 9 :=
  add9 (add9 (add9 (add9 a b) c) d) e

private theorem z9Component_asZ9 (a : Fin 9) : z9Component (asZ9 a) = a := by
  fin_cases a <;> native_decide

private theorem eq_fin9_of_asZ9_eq (a b : Fin 9) (h : asZ9 a = asZ9 b) : a = b := by
  calc
    a = z9Component (asZ9 a) := (z9Component_asZ9 a).symm
    _ = z9Component (asZ9 b) := by rw [h]
    _ = b := z9Component_asZ9 b

private theorem asZ9_add9 (a b : Fin 9) :
    asZ9 (add9 a b) = asZ9 a + asZ9 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem asZ9_sub9 (a b : Fin 9) :
    asZ9 (sub9 a b) = asZ9 a - asZ9 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub9_zero (a : Fin 9) : sub9 a f9_0 = a := by
  fin_cases a <;> native_decide

private theorem asZ9_neg9 (a : Fin 9) : asZ9 (neg9 a) = -asZ9 a := by
  fin_cases a <;> native_decide

private theorem asZ9_mul9_2 (a : Fin 9) : asZ9 (mul9 2 a) = 2 * asZ9 a := by
  fin_cases a <;> native_decide

private theorem asZ9_mul9_3 (a : Fin 9) : asZ9 (mul9 3 a) = 3 * asZ9 a := by
  fin_cases a <;> native_decide

private theorem asZ9_mul9_5 (a : Fin 9) : asZ9 (mul9 5 a) = 5 * asZ9 a := by
  fin_cases a <;> native_decide

private theorem asZ9_mul9_7 (a : Fin 9) : asZ9 (mul9 7 a) = 7 * asZ9 a := by
  fin_cases a <;> native_decide

private theorem asZ9_add9_5 (a b c d e : Fin 9) :
    asZ9 (add9_5 a b c d e) = asZ9 a + asZ9 b + asZ9 c + asZ9 d + asZ9 e := by
  simp [add9_5, asZ9_add9]

private theorem row0_zero_solve (p a b c d e : Fin 9)
    (h : asZ9 p + asZ9 a + 3 * asZ9 b + 2 * asZ9 c + 7 * asZ9 d + 5 * asZ9 e = 0) :
    neg9 (add9_5 a (mul9 3 b) (mul9 2 c) (mul9 7 d) (mul9 5 e)) = p := by
  apply eq_fin9_of_asZ9_eq
  rw [asZ9_neg9, asZ9_add9_5, asZ9_mul9_3, asZ9_mul9_2, asZ9_mul9_7, asZ9_mul9_5]
  linear_combination -h

private theorem row1_zero_solve (p a b c d e : Fin 9)
    (h : asZ9 p + asZ9 a + 2 * asZ9 b + asZ9 c + 3 * asZ9 d + 2 * asZ9 e = 0) :
    neg9 (add9_5 a (mul9 2 b) c (mul9 3 d) (mul9 2 e)) = p := by
  apply eq_fin9_of_asZ9_eq
  simp only [asZ9_neg9, asZ9_add9_5, asZ9_mul9_2, asZ9_mul9_3]
  linear_combination -h

private theorem row2_zero_solve (p a b c d e : Fin 9)
    (h : asZ9 p + asZ9 a + asZ9 b + asZ9 c + asZ9 d + asZ9 e = 0) :
    neg9 (add9_5 a b c d e) = p := by
  apply eq_fin9_of_asZ9_eq
  rw [asZ9_neg9, asZ9_add9_5]
  linear_combination -h

private def linearWord (free : QaryWord 9 5) : QaryWord 9 8 :=
  fun i =>
    if i.val = 0 then
      neg9 (add9_5 (free f5_0) (mul9 3 (free f5_1)) (mul9 2 (free f5_2))
        (mul9 7 (free f5_3)) (mul9 5 (free f5_4)))
    else if i.val = 1 then
      neg9 (add9_5 (free f5_0) (mul9 2 (free f5_1)) (free f5_2)
        (mul9 3 (free f5_3)) (mul9 2 (free f5_4)))
    else if i.val = 2 then
      neg9 (add9_5 (free f5_0) (free f5_1) (free f5_2) (free f5_3) (free f5_4))
    else if i.val = 3 then free f5_0
    else if i.val = 4 then free f5_1
    else if i.val = 5 then free f5_2
    else if i.val = 6 then free f5_3
    else free f5_4

private def linearFree (w : QaryWord 9 8) : QaryWord 9 5 := fun i =>
  if i.val = 0 then w 3
  else if i.val = 1 then w 4
  else if i.val = 2 then w 5
  else if i.val = 3 then w 6
  else w 7

private def zSyn0 (w : QaryWord 9 8) : ZMod 9 :=
  asZ9 (w 0) + asZ9 (w 3) + 3 * asZ9 (w 4) + 2 * asZ9 (w 5) +
    7 * asZ9 (w 6) + 5 * asZ9 (w 7)

private def zSyn1 (w : QaryWord 9 8) : ZMod 9 :=
  asZ9 (w 1) + asZ9 (w 3) + 2 * asZ9 (w 4) + asZ9 (w 5) +
    3 * asZ9 (w 6) + 2 * asZ9 (w 7)

private def zSyn2 (w : QaryWord 9 8) : ZMod 9 :=
  asZ9 (w 2) + asZ9 (w 3) + asZ9 (w 4) + asZ9 (w 5) + asZ9 (w 6) + asZ9 (w 7)

private def IsLinearWord (w : QaryWord 9 8) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0

private instance (w : QaryWord 9 8) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 9 8)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2⟩
  have hw0 := row0_zero_solve (w 0) (w 3) (w 4) (w 5) (w 6) (w 7)
    (by simpa [zSyn0] using h0)
  have hw1 := row1_zero_solve (w 1) (w 3) (w 4) (w 5) (w 6) (w 7)
    (by simpa [zSyn1] using h1)
  have hw2 := row2_zero_solve (w 2) (w 3) (w 4) (w 5) (w 6) (w 7)
    (by simpa [zSyn2] using h2)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1, hw2]

private def linearCode (_ : Unit) : Finset (QaryWord 9 8) :=
  (Finset.univ : Finset (QaryWord 9 5)).image linearWord

private theorem z9Component_inj {a b : ZMod 9}
    (h : z9Component a = z9Component b) : a = b := by
  apply ZMod.val_injective 9
  exact congrArg Fin.val h

private def packSyndrome (s0 s1 s2 : Fin 9) : Fin 729 :=
  ⟨s0.val + 9 * s1.val + 81 * s2.val, by omega⟩

private def syndromeIndex (w : QaryWord 9 8) : Fin 729 :=
  packSyndrome (z9Component (zSyn0 w)) (z9Component (zSyn1 w)) (z9Component (zSyn2 w))

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

private def decodeCorrection (value : Nat) : QaryWord 9 8 :=
  fun i =>
    if i.val = 0 then digit9 value 4782969
    else if i.val = 1 then digit9 value 531441
    else if i.val = 2 then digit9 value 59049
    else if i.val = 3 then digit9 value 6561
    else if i.val = 4 then digit9 value 729
    else if i.val = 5 then digit9 value 81
    else if i.val = 6 then digit9 value 9
    else digit9 value 1

private def correctionData : Array Nat := #[
  0, 4782969, 9565938, 14348907, 19131876, 23914845, 28697814, 33480783, 38263752, 531441, 5314410, 10097379, 14880348, 19663317, 24446286, 29229255,
  34012224, 38795193, 1062882, 5845851, 10628820, 15411789, 20194758, 24977727, 29760696, 34543665, 39326634, 1594323, 6377292, 11160261, 15943230, 20726199,
  25509168, 30292137, 35075106, 39858075, 2125764, 6908733, 11691702, 16474671, 21257640, 26040609, 30823578, 35606547, 40389516, 2657205, 7440174, 12223143,
  17006112, 21789081, 26572050, 31355019, 36137988, 40920957, 3188646, 7971615, 12754584, 17537553, 22320522, 27103491, 31886460, 36669429, 41452398, 3720087,
  8503056, 13286025, 18068994, 22851963, 27634932, 32417901, 37200870, 41983839, 4251528, 9034497, 13817466, 18600435, 23383404, 28166373, 32949342, 37732311,
  42515280, 59049, 4842018, 9624987, 14407956, 19190925, 23973894, 28756863, 33539832, 38322801, 38270313, 6561, 81, 9572499, 14355468, 19138437,
  23921406, 28704375, 33487344, 28698543, 33481512, 38264481, 729, 4783698, 1, 14349636, 19132605, 23915574, 9565947, 14348916, 19131885, 23914854,
  28697823, 33480792, 38263761, 9, 4782978, 2184813, 1600884, 1594404, 1063611, 380538, 1062883, 473850, 531450, 354618, 2716254, 2132325,
  2125845, 1595052, 52506, 1594324, 3402, 1062891, 177154, 3247695, 2663766, 2657286, 2126493, 42, 2125765, 275562, 1594332, 295290,
  3779136, 3195207, 3188727, 2657934, 118106, 2657206, 123930, 2125773, 4698, 4310577, 3726648, 3720168, 3189375, 13194, 3188647, 24786,
  2657214, 170586, 118098, 4901067, 9684036, 14467005, 19249974, 24032943, 28815912, 33598881, 38381850, 649539, 3188648, 4264650, 6075, 4251690,
  2125782, 3190104, 354299, 45963, 33493905, 38276874, 13122, 4796091, 162, 14362029, 19144998, 23927967, 28710936, 1712421, 4251530, 544563,
  492075, 531603, 3188664, 4252986, 59058, 75, 14350365, 2, 23916303, 28699272, 33482241, 38265210, 1458, 4784427, 9567396, 2775303,
  531443, 1607445, 241299, 1594485, 4251546, 532899, 2835, 236203, 19131894, 23914863, 28697832, 33480801, 38263770, 18, 4782987, 9565956,
  14348925, 3838185, 1594325, 2670327, 43011, 2657367, 531459, 1595781, 282123, 26307, 4369626, 2125766, 3201768, 416259, 3188808,
  1062900, 2127222, 177795, 229635, 177147, 4960116, 9743085, 27, 19309023, 24091992, 28874961, 33657930, 38440899, 708588, 124659, 118179,
  3739770, 32812, 44, 3720330, 413348, 37908, 1240029, 32076, 72171, 4271211, 59211, 118099, 4251771, 52, 26252, 28717497,
  33500466, 38283435, 19683, 4802652, 9585621, 243, 19151559, 23934528, 2302911, 59051, 68, 551124, 498636, 13851, 531684, 13123,
  472716, 2834352, 413748, 6563, 1082565, 76, 446148, 1063125, 8019, 295252, 2187, 4785156, 9568125, 14351094, 19134063, 23917032,
  3, 33482970, 38265939, 3897234, 52492, 55404, 2145447, 236204, 295812, 2126007, 341172, 11, 4428675, 19, 472396, 2676888,
  49572, 45932, 2657448, 236844, 288684, 236196, 5019165, 9802134, 14585103, 19368072, 24151041, 28934010, 33716979, 38499948, 767637,
  3720123, 1062886, 1065798, 3214890, 4941, 476037, 472397, 3188970, 1299078, 4251564, 1594327, 1597239, 3746331, 177148, 5589, 32877,
  3720411, 38263788, 36, 4783005, 9565974, 14348943, 19131912, 23914881, 28697850, 33480819, 23941089, 28724058, 33507027, 38289996, 26244,
  4809213, 9592182, 14375151, 324, 2893401, 1062918, 3188650, 3191562, 557685, 505197, 20412, 52533, 531765, 3424842, 1594359,
  3720091, 3723003, 1089126, 118116, 452709, 69, 1063206, 3956283, 2125800, 4251532, 4254444, 1620567, 354861, 301077, 400221,
  1594647, 28700730, 33483699, 4, 2916, 4785885, 9568854, 14351823, 19134792, 23917761, 295245, 5078214, 9861183, 14644152, 19427121,
  24210090, 28993059, 33776028, 38558997, 14352552, 19135521, 23918490, 28701459, 33484428, 38267397, 3645, 5, 9569583, 1358127, 3189051,
  190269, 236925, 177309, 3221451, 535086, 531446, 2657250, 1889568, 3720492, 21, 137781, 413406, 3752892, 1066527, 1062887,
  3188691, 2421009, 4251933, 6597, 45198, 85293, 4284333, 1597968, 1594328, 3720132, 19164681, 405, 28730619, 33513588, 38296557,
  32805, 4815774, 9598743, 14381712, 4783014, 9565983, 14348952, 19131921, 23914890, 28697859, 33480828, 38263797, 45, 4015332, 1063287,
  26253, 1701, 354302, 1095687, 3192291, 3188651, 531486, 4546773, 1594728, 59053, 61965, 2349, 1627128, 3723732, 3720092,
  1062927, 354294, 5137263, 9920232, 14703201, 19486170, 24269139, 54, 33835077, 38618046, 885735, 301806, 295326, 2126250, 13126,
  16038, 2165130, 59054, 71, 1417176, 79, 249318, 2657691, 236358, 295246, 2696571, 10206, 6566, 4374, 4787343,
  9570312, 6, 19136250, 23919219, 28702188, 33485157, 38268126, 2480058, 236198, 57591, 3720573, 144342, 14, 3759453, 52495,
  118422, 3011499, 59454, 45935, 4252014, 51759, 91854, 4290894, 22, 472399, 14388273, 19171242, 23954211, 486, 33520149,
  38303118, 39366, 4822335, 9605304, 4074381, 32806, 38, 531927, 413351, 472959, 570807, 518319, 33534, 4605822, 27702,
  118102, 1063368, 46, 26246, 1102248, 413991, 465831, 413343, 5196312, 9979281, 14762250, 19545219, 24328188, 29111157, 33894126,
  38677095, 944784, 360855, 354375, 2662308, 3720150, 1594890, 121743, 1640250, 2657212, 1476225, 32823, 308367, 3193749, 4251591,
  2126331, 22599, 2171691, 3188653, 23914908, 28697877, 33480846, 38263815, 63, 4783032, 9566001, 14348970, 19131939, 2539107,
  295247, 4455, 4256631, 531504, 3189213, 296703, 3234573, 4251535, 28702917, 33485886, 38268855, 5103, 4788072, 9571041,
  14354010, 19136979, 7, 3601989, 15, 472464, 536544, 1594386, 4252095, 98415, 4297455, 531448, 9611865, 14394834,
  19177803, 23960772, 28743741, 567, 38309679, 45927, 4828896, 4664871, 13167, 177151, 1599426, 2657268, 532008, 1215,
  577368, 1594330, 472392, 5255361, 10038330, 14821299, 19604268, 24387237, 29170206, 33953175, 38736144, 1003833, 419904, 2125836,
  40824, 1594331, 45936, 1600155, 1063530, 1115370, 1535274, 2592, 2657277, 414072, 2125772, 413344, 2131596, 1594971,
  1646811, 2066715, 236232, 3188718, 314928, 2657213, 48, 2663037, 2126412, 2178252, 2598156, 354296, 3720159, 3888,
  3188654, 6624, 3194478, 2657853, 2709693, 3129597, 177552, 4251600, 64152, 3720095, 209952, 3725919, 3189294, 3241134, 33480855,
  38263824, 72, 4783041, 9566010, 14348979, 19131948, 23914917, 28697886, 14354739, 19137708, 23920677, 28703646, 8, 38269584,
  5832, 4788801, 9571770, 4835457, 9618426, 14401395, 19184364, 23967333, 28750302, 33533271, 648, 52488
]

private def syndromeCorrection (s : Fin 729) : QaryWord 9 8 :=
  decodeCorrection (correctionData.getD s.val 0)

private def support (w : QaryWord 9 8) : Finset (Fin 8) :=
  Finset.univ.filter (fun i => w i ≠ f9_0)

set_option maxRecDepth 30000 in
set_option maxHeartbeats 2000000 in
private theorem table_syndrome : ∀ s : Fin 729, syndromeIndex (syndromeCorrection s) = s := by
  native_decide

set_option maxRecDepth 30000 in
set_option maxHeartbeats 2000000 in
private theorem table_weight : ∀ s : Fin 729, (support (syndromeCorrection s)).card ≤ 2 := by
  native_decide

private def subtractError (x e : QaryWord 9 8) : QaryWord 9 8 :=
  fun i => sub9 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 9 8)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ9_sub9]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by
      rw [← h0]
      ring
    have hz : (asZ9 (x 0) + asZ9 (x 3) + 3 * asZ9 (x 4) + 2 * asZ9 (x 5) +
          7 * asZ9 (x 6) + 5 * asZ9 (x 7)) -
        (asZ9 (e 0) + asZ9 (e 3) + 3 * asZ9 (e 4) + 2 * asZ9 (e 5) +
          7 * asZ9 (e 6) + 5 * asZ9 (e 7)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ9 (x 0) - asZ9 (e 0) + (asZ9 (x 3) - asZ9 (e 3)) +
          3 * (asZ9 (x 4) - asZ9 (e 4)) + 2 * (asZ9 (x 5) - asZ9 (e 5)) +
          7 * (asZ9 (x 6) - asZ9 (e 6)) + 5 * (asZ9 (x 7) - asZ9 (e 7))
          = (asZ9 (x 0) + asZ9 (x 3) + 3 * asZ9 (x 4) + 2 * asZ9 (x 5) +
              7 * asZ9 (x 6) + 5 * asZ9 (x 7)) -
            (asZ9 (e 0) + asZ9 (e 3) + 3 * asZ9 (e 4) + 2 * asZ9 (e 5) +
              7 * asZ9 (e 6) + 5 * asZ9 (e 7)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ9_sub9]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by
      rw [← h1]
      ring
    have hz : (asZ9 (x 1) + asZ9 (x 3) + 2 * asZ9 (x 4) + asZ9 (x 5) +
          3 * asZ9 (x 6) + 2 * asZ9 (x 7)) -
        (asZ9 (e 1) + asZ9 (e 3) + 2 * asZ9 (e 4) + asZ9 (e 5) +
          3 * asZ9 (e 6) + 2 * asZ9 (e 7)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ9 (x 1) - asZ9 (e 1) + (asZ9 (x 3) - asZ9 (e 3)) +
          2 * (asZ9 (x 4) - asZ9 (e 4)) + (asZ9 (x 5) - asZ9 (e 5)) +
          3 * (asZ9 (x 6) - asZ9 (e 6)) + 2 * (asZ9 (x 7) - asZ9 (e 7))
          = (asZ9 (x 1) + asZ9 (x 3) + 2 * asZ9 (x 4) + asZ9 (x 5) +
              3 * asZ9 (x 6) + 2 * asZ9 (x 7)) -
            (asZ9 (e 1) + asZ9 (e 3) + 2 * asZ9 (e 4) + asZ9 (e 5) +
              3 * asZ9 (e 6) + 2 * asZ9 (e 7)) := by ring
      _ = 0 := hz
  · unfold zSyn2 subtractError
    simp [asZ9_sub9]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by
      rw [← h2]
      ring
    have hz : (asZ9 (x 2) + asZ9 (x 3) + asZ9 (x 4) + asZ9 (x 5) +
          asZ9 (x 6) + asZ9 (x 7)) -
        (asZ9 (e 2) + asZ9 (e 3) + asZ9 (e 4) + asZ9 (e 5) +
          asZ9 (e 6) + asZ9 (e 7)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ9 (x 2) - asZ9 (e 2) + (asZ9 (x 3) - asZ9 (e 3)) +
          (asZ9 (x 4) - asZ9 (e 4)) + (asZ9 (x 5) - asZ9 (e 5)) +
          (asZ9 (x 6) - asZ9 (e 6)) + (asZ9 (x 7) - asZ9 (e 7))
          = (asZ9 (x 2) + asZ9 (x 3) + asZ9 (x 4) + asZ9 (x 5) +
              asZ9 (x 6) + asZ9 (x 7)) -
            (asZ9 (e 2) + asZ9 (e 3) + asZ9 (e 4) + asZ9 (e 5) +
              asZ9 (e 6) + asZ9 (e 7)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 9 8)
    (hw : (support e).card ≤ 2) :
    hammingDist x (subtractError x e) ≤ 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 8 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f9_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (sub9_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 8 => x i ≠ subtractError x e i).card := rfl
    _ ≤ (support e).card := Finset.card_le_card hsubset
    _ ≤ 2 := hw

private def linearRepair (x : QaryWord 9 8) : QaryWord 9 8 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 9 8) : IsLinearWord (linearRepair x) := by
  let e := syndromeCorrection (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using table_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z9Component (zSyn0 e)) (z9Component (zSyn1 e))
    (z9Component (zSyn2 e)) (z9Component (zSyn0 x)) (z9Component (zSyn1 x))
    (z9Component (zSyn2 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c⟩
  have h0 : zSyn0 e = zSyn0 x := z9Component_inj h0c
  have h1 : zSyn1 e = zSyn1 x := z9Component_inj h1c
  have h2 : zSyn2 e = zSyn2 x := z9Component_inj h2c
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2

private theorem linearRepair_dist (x : QaryWord 9 8) : hammingDist x (linearRepair x) ≤ 2 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset (linearCode ()) 2 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩

private theorem linearCode_card : (linearCode ()).card ≤ 59049 := by
  calc
    (linearCode ()).card ≤ (Finset.univ : Finset (QaryWord 9 5)).card := by
      simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 9 5)))
    _ = 59049 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def knownBoundQ9N8R2UpperName : String :=
  "lean_known_bounds_q9_n8_r2_linear_syndrome"

theorem knownBoundQ9N8R2Cert : QaryKUpper 9 8 2 59049 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩

def knownBoundQ9N8R2Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 8 ∧ r = 2 then 59049 else trivialUpper q n r

theorem knownBoundQ9N8R2Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ9N8R2Upper q n r) := by
  by_cases h : q = 9 ∧ n = 8 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ9N8R2Upper] using knownBoundQ9N8R2Cert
  · simpa [knownBoundQ9N8R2Upper, h] using trivialUpper_valid q n r

def knownBoundQ9N8R2UpperSource : UpperBoundSource where
  value := knownBoundQ9N8R2Upper
  trace := fun q n r =>
    .primitive knownBoundQ9N8R2UpperName (knownBoundQ9N8R2Upper_valid q n r)

end Database
end CoveringCodes
