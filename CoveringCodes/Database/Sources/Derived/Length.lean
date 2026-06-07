import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial

namespace CoveringCodes
namespace Database

/-- Upper-bound transformer: use a source at length `n+1` and puncture one coordinate.
    Falls back to `trivialUpperSource` when `q = 0`. -/
def UpperBoundSource.punctureNextLength (S : UpperBoundSource) : UpperBoundSource where
  value q n r := if 0 < q then S.value q (n + 1) r else trivialUpper q n r
  trace := fun q n r => by
    by_cases hq : 0 < q
    · simp only [if_pos hq]
      exact .puncture hq (S.trace q (n + 1) r)
    · simp only [if_neg hq]
      exact .primitive trivialUpperName (trivialUpper_valid q n r)

/-- Lower-bound transformer: use a source at length `n-1` and back-propagate via puncturing.
    Active only when `0 < n` and `0 < q`; falls back to `zeroLowerSource` otherwise. -/
def LowerBoundSource.puncturePrevLength (S : LowerBoundSource) : LowerBoundSource where
  value q n r := if 0 < n ∧ 0 < q then S.value q (n - 1) r else zeroLower q n r
  trace := fun q n r => by
    by_cases h : 0 < n ∧ 0 < q
    · simp only [if_pos h]
      rcases h with ⟨hn, hq⟩
      have hback := LowerTrace.lengthBack hq (S.trace q (n - 1) r)
      have heq : n - 1 + 1 = n := by omega
      rwa [heq] at hback
    · simp only [if_neg h]
      exact .primitive "rule_trivial_lower" (zeroLower_valid q n r)

end Database
end CoveringCodes
