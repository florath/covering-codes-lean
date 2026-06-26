import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.SDP.GijswijtPolak2025.CertifiedInstances

/-!
# Gijswijt--Polak 2025 SDP lower-bound source

This source registers only closed Gijswijt--Polak SDP lower-bound theorems.
-/

namespace CoveringCodes
namespace Database

abbrev GP2025CertifiedLowerBound :=
  CoveringCodes.SDP.GijswijtPolak2025.CertifiedLowerBound

/-- The value function contributed by one closed GP lower-bound certificate. -/
def gp2025CertifiedLowerValue
    (cert : GP2025CertifiedLowerBound) (q n r : Nat) : Nat :=
  if q = cert.q then
    if n = cert.n then
      if r = cert.r then cert.L else 0
    else
      0
  else
    0

theorem gp2025CertifiedLowerValue_valid
    (cert : GP2025CertifiedLowerBound) (q n r : Nat) :
    QaryKLower q n r (gp2025CertifiedLowerValue cert q n r) := by
  unfold gp2025CertifiedLowerValue
  by_cases hq : q = cert.q
  · subst q
    by_cases hn : n = cert.n
    · subst n
      by_cases hr : r = cert.r
      · subst r
        simp
        exact cert.proof
      · simp [hr]
        exact zeroLower_valid cert.q cert.n r
    · simp [hn]
      exact zeroLower_valid cert.q n r
  · simp [hq]
    exact zeroLower_valid q n r

/-- Turn one closed GP lower-bound theorem into a proof-carrying database source. -/
def gp2025CertifiedLowerSource
    (cert : GP2025CertifiedLowerBound) : LowerBoundSource where
  value := gp2025CertifiedLowerValue cert
  trace := fun q n r => by
    unfold gp2025CertifiedLowerValue
    by_cases hq : q = cert.q
    · subst q
      by_cases hn : n = cert.n
      · subst n
        by_cases hr : r = cert.r
        · subst r
          simp
          exact .primitive "Gijswijt--Polak 2025 SDP certificate" cert.proof
        · simp [hr]
          exact zeroLowerSource.trace cert.q cert.n r
      · simp [hn]
        exact zeroLowerSource.trace cert.q n r
    · simp [hq]
      exact zeroLowerSource.trace q n r

/-- Fold a manifest of closed GP certificates into one proof-carrying source. -/
def gp2025LowerSourceOfList : List GP2025CertifiedLowerBound -> LowerBoundSource
  | [] => zeroLowerSource
  | cert :: rest => (gp2025CertifiedLowerSource cert).max (gp2025LowerSourceOfList rest)

/-- Certified Gijswijt--Polak lower bounds, with valid fallback `0`. -/
def gp2025LowerSource : LowerBoundSource :=
  gp2025LowerSourceOfList CoveringCodes.SDP.GijswijtPolak2025.certifiedLowerBounds

/-- Certified Gijswijt--Polak lower bounds, with valid fallback `0`. -/
def gp2025Lower (q n r : Nat) : Nat :=
  gp2025LowerSource.value q n r

theorem gp2025Lower_valid (q n r : Nat) :
    QaryKLower q n r (gp2025Lower q n r) := by
  exact gp2025LowerSource.valid q n r

end Database
end CoveringCodes
