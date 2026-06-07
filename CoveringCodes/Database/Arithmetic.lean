import Mathlib.Tactic

namespace CoveringCodes
namespace Database

/-- Natural-number ceiling division. Convention: division by zero returns `0`.

Only used with a positive denominator in this project.
-/
def natCeilDiv (a b : ℕ) : ℕ :=
  (a + b - 1) / b

/-- If `a ≤ c * b` and `b > 0`, then `⌈a / b⌉ ≤ c`. -/
theorem natCeilDiv_le_of_le_mul {a b c : ℕ}
    (hb : 0 < b) (h : a ≤ c * b) :
    natCeilDiv a b ≤ c := by
  unfold natCeilDiv
  rw [← Nat.lt_succ_iff]
  rw [Nat.div_lt_iff_lt_mul hb]
  have hle : a + b - 1 ≤ c * b + b - 1 :=
    Nat.sub_le_sub_right (Nat.add_le_add_right h b) 1
  have hlt : c * b + b - 1 < c * b + b := by
    have hpos : 0 < c * b + b := by omega
    omega
  calc a + b - 1 ≤ c * b + b - 1 := hle
    _ < c * b + b := hlt
    _ = (c + 1) * b := by ring

end Database
end CoveringCodes
