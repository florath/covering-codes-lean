import CoveringCodes.Covers
import CoveringCodes.Bounds.Balls

/-!
# Sphere-covering bound

This file proves the classical sphere-covering lower bound:

`K_q(n,r) ≥ q^n / V_q(n,r)`

which says: any covering code needs at least as many codewords as the total space
divided by the volume of a single ball.

## Intuition

Imagine each codeword `c ∈ C` "claiming" all words within distance `r` of itself —
this is exactly the ball `ballFinset c r`.  The condition `CoversFinset C r` says
that every word in the space is claimed by at least one codeword, so the balls
together cover the whole space of `q^n` words.

Now count: each ball contains at most `V_q(n,r)` words, and there are `|C|` balls.
Even if the balls were completely disjoint (best case for the code), they can cover
at most `|C| * V_q(n,r)` words.  But they must cover all `q^n` words, so:

    q^n  ≤  |C| * V_q(n,r)

Rearranged: `|C| ≥ q^n / V_q(n,r)`.

The balls may **overlap** in practice — that only makes the bound stronger (more
codewords are needed to compensate for the wasted coverage).
-/

namespace CoveringCodes

/-- **Sphere-covering bound**: any code that covers all of `QaryWord q n` with radius `r`
    must have at least `q^n / V_q(n,r)` codewords.

    Stated as a product inequality (avoiding natural-number division):
    `|C| * V_q(n,r) ≥ q^n`. -/
theorem sphere_covering_bound {q n r : ℕ}
    (C : Finset (QaryWord q n)) (hC : CoversFinset C r) :
    q ^ n ≤ C.card * qaryBallVolume q n r := by
  -- The space QaryWord q n has q^n elements
  have hcard : q ^ n = Fintype.card (QaryWord q n) := by
    simp [QaryWord, Fintype.card_fin]
  -- Every word belongs to some ball: the union of all balls covers the whole space
  have hcover : Finset.univ ⊆ C.biUnion (fun c => ballFinset c r) := by
    intro x _
    simp only [Finset.mem_biUnion]
    obtain ⟨c, hc, hd⟩ := hC x
    exact ⟨c, hc, (mem_ballFinset x c r).mpr hd⟩
  calc q ^ n
      -- rewrite q^n as the cardinality of the whole space
      = Finset.univ.card                              := by rw [hcard, Finset.card_univ]
      -- the whole space is contained in the union of balls
    _ ≤ (C.biUnion (fun c => ballFinset c r)).card   := Finset.card_le_card hcover
      -- cardinality of a union is at most the sum of cardinalities (balls may overlap)
    _ ≤ ∑ c ∈ C, (ballFinset c r).card              := Finset.card_biUnion_le
      -- each ball has exactly qaryBallVolume q n r elements (independent of center)
    _ = ∑ c ∈ C, qaryBallVolume q n r               :=
          Finset.sum_congr rfl (fun c _ => qaryBallVolume_eq_card c r)
      -- summing a constant over C gives |C| * constant
    _ = C.card * qaryBallVolume q n r               := by
          rw [Finset.sum_const, smul_eq_mul]

end CoveringCodes
