# K_8(4,2) = 23 Proof Data

This directory contains proof data used by the Lean formalization of
`K_8(4,2) = 23`.

## Result

The repository has primitive Lean sources for both sides:

- lower source: `lean_octonary_four_two_structural_lower`;
- upper source: `lean_octonary_four_two_explicit_upper`.

After regenerating the table, the CLI reports:

```text
K_8(4,2) in [23, 23]
lower:
  lean_octonary_four_two_structural_lower
upper:
  lean_octonary_four_two_explicit_upper
exact: K_8(4,2) = 23
```

## Proof Outline

The upper bound comes from a 23-word octonary length-four radius-two code found
by local search.  The code was translated so that `0000` is one center, then
entered directly in Lean.  Lean checks its cardinality and verifies radius-two
coverage of all `8^4 = 4096` words by computation.

The lower-bound search first uses structural restrictions on any hypothetical
22-word cover:

1. Every coordinate-symbol fiber is nonempty.
2. Singleton coordinate-symbol fibers are excluded by shortening to the
   certified helper bound `K_7(3,1) >= 22`.
3. Therefore every coordinate-symbol fiber has size at least two.
4. Pair-projection complement graphs then encode the remaining radius-two
   obstruction: a word is uncovered exactly when all six of its coordinate
   pairs are missing from the corresponding pair projections.

Several Lean graph arguments strengthen this to `K_8(4,2) >= 22`.  The final
22-word case is discharged by finite profile/block graph classifiers.  Those
classifiers are represented as CNF formulas with LRAT refutations and are
checked inside Lean.

## Lean Certificate Structure

The main files are:

- `CoveringCodes/Database/Sources/OctonaryFourTwo.lean`
- `CoveringCodes/Database/Sources/OctonaryFourTwoBlockLRAT.lean`
- `CoveringCodes/Database/Sources/SparseSlicer.lean`
- `data/K_8_4_2/lrat/`

`SparseSlicer.lean` adds the helper theorem
`qarySevenThreeOneLowerTwentyTwo : QaryKLower 7 3 1 22`.

`OctonaryFourTwo.lean` contains the explicit 23-code, the structural
reductions, the profile-graph bridge, and the final theorem
`octonaryFourRadiusTwoLowerTwentyThree : QaryKLower 8 4 2 23`.

`OctonaryFourTwoBlockLRAT.lean` parses the CNF/LRAT files from
`data/K_8_4_2/lrat/`, checks the LRAT refutations, and provides the
unsatisfiability lemmas used by the profile-graph bridge.

## LRAT Files

The files in `lrat/` are CNF formulas and LRAT refutations included by
`CoveringCodes.Database.Sources.OctonaryFourTwoBlockLRAT`.  They are part of
the proof artifact rather than documentation:

- `profile_block_e01_not_block.{cnf,lrat}`
- `profile_block_not_global.{cnf,lrat}`
- `profile_block_lower_e01_not_block.{cnf,lrat}`
- `profile_block_lower_not_global.{cnf,lrat}`

Lean parses these files with `include_str`, constructs reflective SAT formulas,
checks the LRAT proofs, and exposes the resulting unsatisfiability lemmas to
the `K_8(4,2)` lower-bound proof.

The generated table changes also propagate 391 additional improved rows beyond
the exact `K_8(4,2)` row, mainly through lengthening and alphabet-back
relations.
