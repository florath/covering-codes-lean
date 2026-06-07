import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial

namespace CoveringCodes
namespace Database

/-- Upper-bound transformer: use a source at alphabet `q+1` and project down to `q`.
    Falls back to `trivialUpperSource` when `q = 0`. -/
def UpperBoundSource.projectFromNextAlphabet (S : UpperBoundSource) : UpperBoundSource where
  value q n r := if 0 < q then S.value (q + 1) n r else trivialUpper q n r
  trace := fun q n r => by
    by_cases hq : 0 < q
    · simp only [if_pos hq]
      exact .alphabetProject hq (Nat.le_add_right q 1) (S.trace (q + 1) n r)
    · simp only [if_neg hq]
      exact .primitive trivialUpperName (trivialUpper_valid q n r)

/-- Lower-bound transformer: use a source at alphabet `q-1` and back-propagate.
    Active only when `1 < q`; falls back to `zeroLowerSource` otherwise. -/
def LowerBoundSource.projectBackFromPrevAlphabet (S : LowerBoundSource) : LowerBoundSource where
  value q n r := if 1 < q then S.value (q - 1) n r else zeroLower q n r
  trace := fun q n r => by
    by_cases hq : 1 < q
    · simp only [if_pos hq]
      have ha : 0 < q - 1 := by omega
      have haq : q - 1 ≤ q := Nat.sub_le q 1
      exact LowerTrace.alphabetBack ha haq (S.trace (q - 1) n r)
    · simp only [if_neg hq]
      exact .primitive "rule_trivial_lower" (zeroLower_valid q n r)

end Database
end CoveringCodes
