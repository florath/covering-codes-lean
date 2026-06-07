import CoveringCodes.Database.Source

namespace CoveringCodes
namespace Database

/-- Upper-bound transformer: use a source at radius `r-1` and promote via radius monotonicity.
    Falls back to the source at `r` when `r = 0`. -/
def UpperBoundSource.radiusPrev (S : UpperBoundSource) : UpperBoundSource where
  value q n r := if 0 < r then S.value q n (r - 1) else S.value q n r
  trace := fun q n r => by
    by_cases hr : 0 < r
    · simp only [if_pos hr]
      exact .radiusMono (Nat.sub_le r 1) (S.trace q n (r - 1))
    · simp only [if_neg hr]
      exact S.trace q n r

/-- Lower-bound transformer: use a source at radius `r+1` and back-propagate via lower monotonicity. -/
def LowerBoundSource.radiusNext (S : LowerBoundSource) : LowerBoundSource where
  value q n r := S.value q n (r + 1)
  trace := fun q n r => .radiusBack (Nat.le_add_right r 1) (S.trace q n (r + 1))

end Database
end CoveringCodes
