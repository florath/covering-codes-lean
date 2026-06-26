import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual

/-!
# Tiny toy certificate for the generic weak-duality interface
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

inductive ToyVar where
  | x
deriving DecidableEq, Fintype

instance : Unique ToyVar where
  default := ToyVar.x
  uniq := by
    intro v
    cases v
    rfl

def ToyConstraints (v : ToyVar -> Rat) : Prop :=
  1 <= v ToyVar.x

def ToyObjective (v : ToyVar -> Rat) : Rat :=
  v ToyVar.x

/-- The toy lower-bound atom `x - 1 >= 0`. -/
inductive ToyAtom where
  | lower
deriving DecidableEq, Fintype

instance : Unique ToyAtom where
  default := ToyAtom.lower
  uniq := by
    intro a
    cases a
    rfl

inductive ToyBlock where
  | psd
deriving DecidableEq, Fintype

instance : Unique ToyBlock where
  default := ToyBlock.psd
  uniq := by
    intro b
    cases b
    rfl

def ToyObjectiveExpr : LinExpr ToyVar where
  coeff
    | ToyVar.x => 1
  const := 0

def ToyAtomExpr : ToyAtom -> LinExpr ToyVar
  | ToyAtom.lower =>
      { coeff := fun
          | ToyVar.x => 1
        const := -1 }

def ToyBlockIndex (_ : ToyBlock) : Type :=
  PUnit

def ToyGramIndex (_ : ToyBlock) : Type :=
  PUnit

instance (b : ToyBlock) : Fintype (ToyBlockIndex b) := by
  cases b
  dsimp [ToyBlockIndex]
  infer_instance

instance (b : ToyBlock) : Fintype (ToyGramIndex b) := by
  cases b
  dsimp [ToyGramIndex]
  infer_instance

@[simp]
theorem card_ToyBlockIndex (b : ToyBlock) : Fintype.card (ToyBlockIndex b) = 1 := by
  cases b
  rfl

@[simp]
theorem card_ToyGramIndex (b : ToyBlock) : Fintype.card (ToyGramIndex b) = 1 := by
  cases b
  rfl

def ToyPSDAtom : forall b : ToyBlock,
    Matrix (ToyBlockIndex b) (ToyBlockIndex b) (LinExpr ToyVar)
  | ToyBlock.psd =>
      fun _ _ =>
        { coeff := fun
            | ToyVar.x => 1
          const := -1 }

def ToyDualMatrix : forall b : ToyBlock,
    Matrix (ToyBlockIndex b) (ToyBlockIndex b) Rat
  | ToyBlock.psd => fun _ _ => 1

def toyDualGramCertificate (b : ToyBlock) :
    GramEntryCertificate (ToyBlockIndex b) (ToyGramIndex b) (ToyDualMatrix b) := by
  cases b
  refine ⟨fun _ _ => 1, ?_⟩
  intro i j
  cases i
  cases j
  simp [ToyDualMatrix]

theorem ToyLinearConstraints_iff (v : ToyVar -> Rat) :
    LinearConstraints ToyAtomExpr v ↔ ToyConstraints v := by
  constructor
  · intro h
    have h0 := h ToyAtom.lower
    dsimp [LinearConstraints, ToyAtomExpr, LinExpr.eval, ToyConstraints] at h0 ⊢
    simpa using h0
  · intro h a
    cases a
    dsimp [LinearConstraints, ToyAtomExpr, LinExpr.eval, ToyConstraints] at h ⊢
    simpa using h

def toyLinearCertificate :
    LinearObjectiveLowerCertificate ToyVar ToyAtom ToyAtomExpr ToyObjectiveExpr 1 where
  multiplier
    | ToyAtom.lower => 1
  multiplier_nonneg := by
    intro a
    cases a
    norm_num
  slack := 0
  slack_nonneg := by norm_num
  const_identity := by
    simp [ToyObjectiveExpr, ToyAtomExpr]
  coeff_identity := by
    intro i
    cases i
    simp [ToyObjectiveExpr, ToyAtomExpr]

def toyCertificate :
    ObjectiveLowerCertificate ToyVar (LinearConstraints ToyAtomExpr)
      (fun v => ToyObjectiveExpr.eval v) 1 :=
  toyLinearCertificate.toObjectiveLowerCertificate

theorem toyLinearCertificate_sound :
    forall v, LinearConstraints ToyAtomExpr v -> (1 : Rat) <= ToyObjectiveExpr.eval v :=
  ObjectiveLowerCertificate.sound toyCertificate

theorem toyCertificate_sound :
    forall v, ToyConstraints v -> (1 : Rat) <= ToyObjective v := by
  intro v hv
  have hlin := toyLinearCertificate_sound v ((ToyLinearConstraints_iff v).mpr hv)
  dsimp [ToyObjective, ToyObjectiveExpr, LinExpr.eval] at hlin ⊢
  simpa using hlin

def toySDPCertificate :
    SDPObjectiveLowerCertificate ToyVar ToyAtom ToyBlock ToyBlockIndex ToyGramIndex
      ToyAtomExpr ToyPSDAtom ToyObjectiveExpr 1 where
  linearMultiplier
    | ToyAtom.lower => 0
  linearMultiplier_nonneg := by
    intro a
    cases a
    norm_num
  slack := 0
  slack_nonneg := by norm_num
  dualMatrix := ToyDualMatrix
  dualMatrixGram := toyDualGramCertificate
  const_identity := by
    simp [sdpDualExpression, ToyObjectiveExpr, ToyPSDAtom, ToyDualMatrix,
      MatrixLinExpr.innerExpr, LinExpr.subConst, LinExpr.constExpr, LinExpr.add,
      LinExpr.sum, LinExpr.smul]
  coeff_identity := by
    intro i
    cases i
    simp [sdpDualExpression, ToyObjectiveExpr, ToyPSDAtom, ToyDualMatrix,
      MatrixLinExpr.innerExpr, LinExpr.subConst, LinExpr.constExpr, LinExpr.add,
      LinExpr.sum, LinExpr.smul]

theorem toySDPCertificate_sound :
    forall v,
      SDPConstraints ToyAtomExpr ToyPSDAtom v ->
        (1 : Rat) <= ToyObjectiveExpr.eval v :=
  SDPObjectiveLowerCertificate.sound toySDPCertificate

end GijswijtPolak2025
end SDP
end CoveringCodes
