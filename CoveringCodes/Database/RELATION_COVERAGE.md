# Relation coverage audit

This file is the authoritative inventory of every formal relation theorem and its
status in the proof-carrying database.  It **must** be updated whenever a relation
is added to `Trace.lean`, `Certificate.lean`, or `BoundTable.lean`.

Columns:
- **Relation theorem** — exact Lean name in `CoveringCodes.Relations.*`
- **File** — source file relative to `CoveringCodes/Relations/`
- **Direction** — `upper` (improves upper bound) or `lower` (improves lower bound)
- **Trace constructor** — name in `UpperTrace` / `LowerTrace`, or `—` if none
- **Automatic closure?** — `yes` if a pass in `BoundTable.lean` uses it; `no` otherwise
- **Status** — one of: `automatic`, `trace-only`, `manual explicit-code helper`, `formalized only`
- **Notes**

| Relation theorem | File | Direction | Trace constructor | Automatic closure? | Status | Notes |
|---|---|---|---|---|---|---|
| `upper_radius_mono` | `RadiusMono.lean` | upper | `UpperTrace.radiusMono` | yes | automatic | `relaxUpperRadiusOnce` |
| `lower_radius_back` | `RadiusMono.lean` | lower | `LowerTrace.radiusBack` | yes | automatic | `relaxLowerRadiusOnce` |
| `upper_puncture` | `LengthTransforms.lean` | upper | `UpperTrace.puncture` | yes | automatic | `relaxUpperLengthOnce` (t=1) |
| `lower_puncture_back` | `LengthTransforms.lean` | lower | `LowerTrace.lengthBack` | yes | automatic | `relaxLowerLengthOnce` (t=1) |
| `upper_lengthen_free` | `LengthTransforms.lean` | upper | `UpperTrace.lengthenFreeN` | yes | automatic | `relaxUpperLengthenFreeOnce` |
| `lower_of_lengthen_free` | `LengthTransforms.lean` | lower | `LowerTrace.lengthenFreeBack` | yes | automatic | `relaxLowerLengthenFreeBackOnce` |
| `upper_lengthen_dummy` | `LengthTransforms.lean` | upper | `UpperTrace.lengthenDummyN` | yes | automatic | `relaxUpperLengthenDummyOnce` |
| `lower_of_lengthen_dummy` | `LengthTransforms.lean` | lower | `LowerTrace.dummyBack` | yes | automatic | `relaxLowerDummyBackOnce` |
| `upper_alphabet_project` | `AlphabetTransforms.lean` | upper | `UpperTrace.alphabetProject` | yes | automatic | `relaxUpperAlphabetOnce` |
| `lower_alphabet_project_back` | `AlphabetTransforms.lean` | lower | `LowerTrace.alphabetBack` | yes | automatic | `relaxLowerAlphabetOnce` |
| `upper_alphabet_expand` | `AlphabetTransforms.lean` | upper | `UpperTrace.alphabetExpand` | yes | automatic | `relaxUpperAlphabetExpandOnce`; K_Q(n,r) ≤ s^n * K_q(n,r) when Q ≤ s*q |
| `upper_direct_product` | `DirectProduct.lean` | upper | `UpperTrace.directProduct` | no | trace-only | closure disabled (`enableDirectProductClosure = false`); O(N²R²Q) cost |
| `lower_of_direct_product_left` | `DirectProduct.lean` | lower | `LowerTrace.lowerDirectProductLeft` | no | trace-only | no closure pass; use `LowerCert.lowerDirectProductLeft` manually |
| `lower_of_direct_product_right` | `DirectProduct.lean` | lower | `LowerTrace.lowerDirectProductRight` | no | trace-only | no closure pass; use `LowerCert.lowerDirectProductRight` manually |
| `upper_repeated_product` | `DirectProduct.lean` | upper | — | no | formalized only | special case of direct product; not yet wrapped |
| `upper_block_group` | `BlockTransforms.lean` | upper | `UpperTrace.blockGroup` | yes | automatic | `relaxUpperBlockGroupOnce`; K_{q^m}(N,r) ≤ K_q(m*N,r) |
| `lower_of_block_group` | `BlockTransforms.lean` | lower | `LowerTrace.lowerBlockGroup` | yes | automatic | `relaxLowerBlockGroupOnce` |
| `upper_block_ungroup` | `BlockTransforms.lean` | upper | `UpperTrace.blockUngroup` | yes | automatic | `relaxUpperBlockUngroupOnce` |
| `lower_of_block_ungroup` | `BlockTransforms.lean` | lower | `LowerTrace.lowerBlockUngroup` | yes | automatic | `relaxLowerBlockUngroupOnce`; 0 wins so far in default table range |
| `upper_concatenation` | `Concatenation.lean` | upper | — | no | formalized only; witness-dependent; planned manual helper | requires explicit inner map; see `Sources/Derived/Concatenation.md` |
| `upper_shortening_missing_symbol` | `StructuralShortening.lean` | upper | — | no | manual explicit-code helper | requires explicit code data; see `Sources/Derived/StructuralShortening.lean` |
| `upper_shortening_fixed_coordinate` | `StructuralShortening.lean` | upper | — | no | manual explicit-code helper | requires explicit code data |
| `upper_shortening_pattern_avoidance` | `StructuralShortening.lean` | upper | — | no | manual explicit-code helper | requires explicit `delta` witness |
| `upper_hole_filling` | `HoleFilling.lean` | upper | — | no | manual explicit-code helper | requires explicit hole-coverage data |
| `upper_colored_product` | `ColoredProduct.lean` | upper | — | no | manual explicit-code helper | requires explicit coloring/witness |

## Summary (current)

- **Automatic** (15): `upper_radius_mono`, `lower_radius_back`, `upper_puncture`, `lower_puncture_back`, `upper_alphabet_project`, `lower_alphabet_project_back`, `upper_lengthen_free`, `upper_lengthen_dummy`, `lower_of_lengthen_dummy`, `lower_of_lengthen_free`, `upper_alphabet_expand`, `upper_block_group`, `lower_of_block_group`, `upper_block_ungroup`, `lower_of_block_ungroup`

- **Trace-only** (3): `upper_direct_product` (closure disabled), `lower_of_direct_product_left`, `lower_of_direct_product_right`

- **Formalized only** (1): `upper_repeated_product` (special case of direct product; not yet wrapped)

- **Manual explicit-code helpers** (5): shortening ×3, hole filling, colored product

- **Witness-dependent, planned manual** (1): concatenation
