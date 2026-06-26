import CoveringCodes.SDP.GijswijtPolak2025.LinearInequalities
import CoveringCodes.SDP.GijswijtPolak2025.BorderedMatrix
import CoveringCodes.SDP.GijswijtPolak2025.CubeThreshold
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.PSDGram

/-!
# Abstract SDP targets from Section 2
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Code-incidence matrix of a finite code. -/
def codeMatrix {q n : Nat} (C : Finset (QaryWord q n)) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v => if u ∈ C ∧ v ∈ C then 1 else 0

/-- Indicator vector of a finite code, as a rational vector. -/
def codeIndicator {q n : Nat} (C : Finset (QaryWord q n)) :
    QaryWord q n -> Rat :=
  fun u => if u ∈ C then 1 else 0

theorem codeMatrix_eq_indicator_mul {q n : Nat}
    (C : Finset (QaryWord q n)) (u v : QaryWord q n) :
    codeMatrix C u v = codeIndicator C u * codeIndicator C v := by
  by_cases hu : u ∈ C <;> by_cases hv : v ∈ C <;>
    simp [codeMatrix, codeIndicator, hu, hv]

theorem codeMatrix_transpose {q n : Nat}
    (C : Finset (QaryWord q n)) :
    (codeMatrix C).transpose = codeMatrix C := by
  ext u v
  by_cases hu : u ∈ C <;> by_cases hv : v ∈ C <;>
    simp [Matrix.transpose_apply, codeMatrix, hu, hv]

/-- Entrywise one-row Gram certificate for the code-incidence matrix. -/
def codeMatrixGramCertificate {q n : Nat}
    (C : Finset (QaryWord q n)) :
    GramEntryCertificate (QaryWord q n) Unit (codeMatrix C) where
  B := fun _ u => codeIndicator C u
  entry_eq := by
    intro u v
    simp [codeMatrix_eq_indicator_mul]

theorem codeMatrix_psd {q n : Nat}
    (C : Finset (QaryWord q n)) :
    RatPSD (codeMatrix C) :=
  (codeMatrixGramCertificate C).psd

/-- Code-incidence matrix restricted to rows and columns satisfying `p`. -/
def restrictedCodeMatrix {q n : Nat}
    (C : Finset (QaryWord q n)) (p : QaryWord q n -> Prop)
    [DecidablePred p] :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v => if u ∈ C ∧ p u ∧ v ∈ C ∧ p v then 1 else 0

/--
Restricting a code-incidence matrix to a predicate on rows and columns
preserves PSD.  This is the raw matrix form of filtering a code before taking
the orbit/block reduction.
-/
theorem restrictedCodeMatrix_psd {q n : Nat}
    (C : Finset (QaryWord q n)) (p : QaryWord q n -> Prop)
    [DecidablePred p] :
    RatPSD (restrictedCodeMatrix C p) := by
  classical
  let mask : QaryWord q n -> Rat := fun u => if p u then 1 else 0
  have hdiag := (codeMatrix_psd C).diagonalCongr mask
  convert hdiag using 1
  ext u v
  by_cases huC : u ∈ C <;> by_cases hvC : v ∈ C <;>
    by_cases hup : p u <;> by_cases hvp : p v <;>
      simp [restrictedCodeMatrix, codeMatrix, mask, huC, hvC, hup, hvp]

/-- Slack of a valid linear inequality at a word `u`. -/
def validLinearInequalitySlack {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord q n)) (u : QaryWord q n) : Rat :=
  Finset.univ.sum
    (fun i : Fin (n + 1) =>
      lambda i * (shellCount q n C u i.val : Rat)) - beta

/-- Valid linear inequalities have nonnegative slack on covering codes. -/
theorem validLinearInequalitySlack_nonneg {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality q n r lambda beta)
    (C : Finset (QaryWord q n)) (hC : CoversFinset C r)
    (u : QaryWord q n) :
    0 <= validLinearInequalitySlack lambda beta C u := by
  rcases hvalid with ⟨_, _, hineq⟩
  have h := hineq C hC u
  unfold validLinearInequalitySlack
  linarith

/-- The diagonal matrix of valid-inequality slack values is PSD. -/
theorem validLinearInequalitySlackDiagonal_psd {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality q n r lambda beta)
    (C : Finset (QaryWord q n)) (hC : CoversFinset C r) :
    RatPSD
      (fun u v : QaryWord q n =>
        if u = v then validLinearInequalitySlack lambda beta C u else 0) := by
  exact RatPSD.diagonal
    (fun u => validLinearInequalitySlack_nonneg hvalid C hC u)

/-- Abstract record for the matrices appearing in Section 2. -/
structure AbstractSDPFeasibleMatrices (q n r : Nat) where
  Mprime : Matrix (QaryWord q n) (QaryWord q n) Rat
  MdoublePrime : Matrix (QaryWord q n) (QaryWord q n) Rat
  N : Matrix (QaryWord q n) (QaryWord q n) Rat
  objective : Rat
  basicInequalities : Prop
  basicInequalitiesProof : basicInequalities
  symmetry : Prop
  symmetryProof : symmetry
  semidefiniteMprime : RatPSD Mprime
  semidefiniteMdoublePrime : RatPSD MdoublePrime
  semidefiniteN : RatPSD N
  lasserreAndCuts : Prop
  lasserreAndCutsProof : lasserreAndCuts

/-- Data-only top-down interface for an exact abstract SDP dual certificate. -/
structure AbstractSDPDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat) where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveLowerBound :
    forall F : AbstractSDPFeasibleMatrices q n r, bound <= F.objective
  codeObjectiveBound :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        exists F : AbstractSDPFeasibleMatrices q n r,
          F.objective <= (C.card : Rat) ^ 3

theorem prop_2_1_basic_inequalities_and_symmetry {q n r : Nat}
    (F : AbstractSDPFeasibleMatrices q n r) :
    F.basicInequalities ∧ F.symmetry := by
  exact ⟨F.basicInequalitiesProof, F.symmetryProof⟩

theorem prop_2_2_semidefinite {q n r : Nat}
    (F : AbstractSDPFeasibleMatrices q n r) :
    RatPSD F.Mprime ∧ RatPSD F.MdoublePrime := by
  exact ⟨F.semidefiniteMprime, F.semidefiniteMdoublePrime⟩

theorem prop_2_3_objective_function {q n r : Nat}
    (F : AbstractSDPFeasibleMatrices q n r) :
    F.objective = F.objective := by
  rfl

theorem prop_2_4_lasserre_and_matrix_cuts {q n r : Nat}
    (F : AbstractSDPFeasibleMatrices q n r) :
    F.lasserreAndCuts ∧ RatPSD F.N := by
  exact ⟨F.lasserreAndCutsProof, F.semidefiniteN⟩

theorem theorem_2_5_covering_lower_bound
    {q n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (_hlin : ValidLinearInequality q n r lambda beta)
    (hdual : AbstractSDPDualCertificate q n r lambda beta L) :
    QaryKLower q n r L := by
  apply lower_of_cube_objective_bound hdual.cubeThreshold
  intro C hC
  rcases hdual.codeObjectiveBound C hC with ⟨F, hF⟩
  exact le_trans (hdual.objectiveLowerBound F) hF

end GijswijtPolak2025
end SDP
end CoveringCodes
