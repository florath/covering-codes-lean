import CoveringCodes.Database.Sources.VanLaarhoven1989.Common

namespace CoveringCodes
namespace Database

open VanLaarhoven1989

set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-! ### K_3(6,1) ≤ 73 -/

private def vanLaarhoven6Packed : Array ℕ := #[107, 728, 79, 565, 673, 294, 375, 456, 320, 428, 509, 617, 725, 211, 616, 156, 507, 47, 722, 262, 343, 397, 478, 180, 612, 179, 395, 530, 124, 421, 664, 15, 231, 122, 13, 229, 283, 634, 336, 687, 65, 443, 578, 118, 63, 171, 306, 549, 197, 251, 61, 304, 412, 573, 600, 627, 248, 464, 545, 653, 85, 355, 30, 462, 137, 245, 353, 487, 514, 676, 703, 162, 351]

private def vanLaarhoven6MoveCert : Array ℕ := #[
  15, 18, 17, 11, 8, 17, 8, 12, 17, 6, 5, 12, 2, 0, 2, 0, 1, 1, 15, 17, 11, 18, 8, 18, 8, 12, 14, 5, 18, 9, 0, 1,
  1, 5, 12, 15, 12, 14, 9, 7, 10, 14, 10, 14, 18, 3, 3, 0, 7, 15, 4, 17, 12, 4, 8, 6, 8, 11, 6, 18, 2, 0, 2, 0,
  1, 0, 4, 10, 4, 4, 7, 4, 8, 6, 8, 14, 6, 17, 2, 0, 2, 15, 5, 12, 2, 0, 2, 18, 5, 9, 15, 11, 18, 17, 7, 11,
  13, 11, 9, 15, 17, 6, 12, 7, 6, 3, 3, 0, 17, 8, 12, 13, 10, 8, 18, 8, 15, 2, 0, 2, 3, 3, 0, 2, 0, 2, 18, 8,
  13, 12, 15, 8, 17, 8, 10, 3, 3, 0, 9, 10, 4, 18, 13, 4, 13, 11, 7, 9, 15, 11, 15, 11, 17, 5, 17, 7, 0, 1, 1, 5,
  13, 10, 0, 1, 1, 4, 14, 18, 4, 17, 8, 0, 1, 1, 4, 12, 6, 3, 3, 0, 0, 1, 1, 4, 11, 17, 4, 18, 8, 10, 18, 6,
  13, 9, 6, 3, 3, 0, 10, 14, 17, 18, 9, 14, 12, 14, 7, 10, 5, 13, 2, 0, 2, 17, 5, 7, 10, 18, 14, 17, 8, 17, 8, 13,
  11, 6, 5, 13, 2, 0, 2, 0, 1, 1, 10, 17, 18, 14, 8, 18, 8, 13, 18, 3, 3, 0, 3, 3, 0, 3, 3, 0, 12, 9, 7, 14,
  11, 7, 16, 15, 7, 2, 0, 2, 18, 4, 7, 11, 4, 7, 14, 18, 10, 16, 8, 10, 9, 12, 10, 12, 5, 15, 2, 0, 2, 9, 5, 18,
  6, 10, 16, 6, 8, 12, 0, 1, 1, 8, 6, 10, 15, 6, 9, 2, 0, 2, 0, 1, 1, 4, 11, 9, 4, 7, 14, 8, 10, 5, 3, 3,
  0, 11, 7, 5, 11, 9, 11, 8, 11, 13, 18, 15, 13, 5, 9, 18, 0, 1, 1, 5, 15, 12, 2, 0, 2, 8, 4, 15, 11, 4, 16, 0,
  1, 0, 2, 0, 2, 4, 5, 4, 7, 16, 7, 10, 7, 16, 9, 16, 12, 6, 10, 7, 6, 7, 18, 0, 1, 1, 11, 9, 11, 15, 11, 15,
  18, 13, 8, 13, 9, 6, 10, 18, 6, 3, 3, 0, 2, 0, 2, 16, 4, 13, 11, 4, 8, 16, 6, 13, 12, 6, 9, 2, 0, 2, 16, 6,
  11, 14, 6, 9, 2, 0, 2, 16, 12, 5, 3, 3, 0, 11, 7, 5, 14, 18, 8, 12, 14, 12, 9, 10, 16, 3, 3, 0, 18, 13, 4, 9,
  10, 4, 6, 12, 8, 6, 16, 10, 0, 1, 1, 5, 9, 5, 0, 1, 0, 5, 10, 5, 13, 9, 11, 7, 16, 7, 16, 10, 14, 2, 0, 2,
  7, 4, 7, 11, 4, 18, 2, 0, 2, 9, 4, 9, 14, 4, 17, 12, 7, 14, 9, 16, 9, 16, 15, 11, 5, 7, 5, 0, 1, 0, 5, 12,
  5, 2, 0, 2, 16, 4, 12, 14, 4, 8, 12, 7, 6, 15, 17, 6, 3, 3, 0, 14, 7, 16, 10, 14, 10, 17, 12, 8, 8, 10, 5, 3,
  3, 0, 14, 9, 5, 0, 1, 1, 4, 14, 7, 4, 9, 11, 8, 6, 15, 10, 6, 7, 2, 0, 2, 6, 13, 8, 6, 16, 15, 0, 1, 1,
  3, 3, 0, 17, 12, 4, 7, 15, 4, 11, 17, 8, 13, 11, 11, 7, 15, 16, 6, 13, 17, 6, 9, 9, 0, 1, 1, 9, 16, 10, 15, 9,
  9, 7, 16, 13, 0, 1, 1, 2, 0, 0, 4, 5, 5, 6, 15, 16, 6, 8, 13, 0, 1, 1, 13, 5, 10, 2, 0, 2, 7, 5, 17, 11,
  17, 15, 16, 8, 11, 7, 13, 15, 16, 11, 5, 3, 3, 0, 14, 8, 5, 16, 6, 14, 11, 6, 7, 2, 0, 2, 16, 6, 12, 13, 6, 7,
  2, 0, 2, 2, 0, 2, 8, 4, 10, 14, 4, 16, 5, 7, 17, 0, 1, 1, 5, 10, 13, 14, 7, 12, 8, 14, 12, 17, 10, 12, 2, 0,
  2, 17, 4, 9, 14, 4, 9, 13, 7, 9, 11, 14, 9, 16, 10, 9, 3, 3, 0, 3, 3, 0, 3, 3, 0
]

-- Wrapped in a function to prevent eager initialization at module-load time.
private def vanLaarhoven6Code (_ : Unit) : Finset (QaryWord 3 6) :=
  codeFromPacked 6 vanLaarhoven6Packed

private theorem vanLaarhoven6_witness_total :
    allPackedMoveCerts (n := 6) vanLaarhoven6Packed vanLaarhoven6MoveCert = true := by
  covering_decide +kernel

private theorem vanLaarhoven6_covers : CoversFinset (vanLaarhoven6Code ()) 1 := by
  simpa [vanLaarhoven6Code] using
    (packedMoveCert_covers (packed := vanLaarhoven6Packed) (cert := vanLaarhoven6MoveCert)
      (n := 6) vanLaarhoven6_witness_total)

private theorem vanLaarhoven6_card : (vanLaarhoven6Code ()).card ≤ 73 := by
  simpa [vanLaarhoven6Code, vanLaarhoven6Packed] using
    (codeFromPacked_card_le 6 vanLaarhoven6Packed)


def vanLaarhoven6UpperName : String :=
  "lit_laarhoven_aarts_van_lint_wille_1989"

def vanLaarhoven6Explicit : ExplicitQaryUpper 3 6 1 73 :=
  { code := vanLaarhoven6Code (), card_le := vanLaarhoven6_card, covers := vanLaarhoven6_covers }

def vanLaarhoven6Upper (q n r : ℕ) : ℕ :=
  if q = 3 ∧ n = 6 ∧ r = 1 then 73 else trivialUpper q n r

theorem vanLaarhoven6Upper_valid (q n r : ℕ) :
    QaryKUpper q n r (vanLaarhoven6Upper q n r) := by
  by_cases h : q = 3 ∧ n = 6 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [vanLaarhoven6Upper] using vanLaarhoven6Explicit.toUpper
  · simpa [vanLaarhoven6Upper, h] using trivialUpper_valid q n r

def vanLaarhoven6UpperSource : UpperBoundSource where
  value := vanLaarhoven6Upper
  trace := fun q n r => .primitive vanLaarhoven6UpperName (vanLaarhoven6Upper_valid q n r)

end Database
end CoveringCodes
