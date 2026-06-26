# Regenerating the GP2025 K2 certificate

This note documents the regeneration path for the generated Lean certificate
payload used for:

```text
K_2(13,1) >= 607
```

The payload is the external certificate bundle:

```text
K_2_13_1-gp2025-sdp-generated
```

It materializes under:

```text
CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1
```

## Proof Route

The old compact/full quotient-boundary fallback generated
`CompactDataQuotientCoeff*.lean` modules. Native release QA failed there on
2026-06-25 because those chunks expanded full aggregate scalar data and left
large `SparseLinExprData.listSum [...]` goals unsolved.

This branch uses a shorter compact-component route. It proves the objective
expression against compact component data, then transports the compact
component semantics to the full aggregate bridge. For the scalar part, use the
source-semantic refinement:

```text
--compact-scalar-source-data
--compact-scalar-source-derived-data
--compact-scalar-source-semantic
--compact-scalar-source-chunk-size 1
--compact-scalar-component-semantic-coeff-chunk-size 20
```

This keeps `CompactSemantic.lean` from importing the thousands of
`CompactScalarGroup*SemanticCoeff*.lean` witnesses. The generated PSD/component
coefficient chunks still intentionally use `native_decide`; the release checks
build both native and kernel proof modes, and the local static metrics gate
records the count instead of requiring zero. Keep the source chunk size at 1:
larger chunks can make the literal-to-derived source-data equality proofs too
coarse for focused validation. In local trials on 2026-06-25, sizes 5, 10, 50,
100, and 1000 each exposed early hotspots; size 2 got farther but still stalled
around the source range 342..346. The source-semantic coefficient chunk size is
The source-semantic equality is generated directly against the quotient
semantic expression coefficients. Do not reintroduce the older dense
`ofLinExprByFin` semantic sparse-data equality route: with that proof shape,
coefficient modules around source groups 683..691 ran for minutes even after
splitting to size 5. The direct coefficient route keeps size 20 viable while
avoiding a very large one-coefficient-per-file generated tree.

A good regenerated payload must contain at least:

```text
Bridge.lean
BridgeAtoms.lean
CompactBridge.lean
CompactComponentEq.lean
CompactComponentEqCoeff*.lean
CompactScalar.lean
CompactScalarSource*.lean
CompactPsdComponent*Semantic*.lean
CompactObjective.lean
CompactSemantic.lean
CompactCertificate.lean
```

It must not contain the old quotient fallback files:

```text
CompactDataQuotientCoeff*.lean
CompactDataQuotient*.lean
CompactQuotientExpression.lean
```

Do not upload the old archive whose quotient chunks still leave unsolved
`SparseLinExprData.listSum [...]` goals.

## Artifact Files To Search For

The real K2 exact/export artifacts are not present in the visible worker
checkouts. If they were generated elsewhere, look for this bundle:

```text
gp_binary_13_1_dual.json
gp_binary_13_1_expr.json
gp_binary_13_1_full_expr.json
gp_binary_13_1_rationalization_summary.json
gp_binary_13_1_exact_certificate_data_fullagg_components_family_200_20.json
CertificateProvenance.json
MANIFEST.sha256
```

The optional transfer archive is normally named:

```text
gp2025-k2-artifacts.tar.gz
```

The default local artifact directory used by the scripts is:

```text
/tmp/gp2025-k2-artifacts
```

## One-Command Regeneration

Use the wrapper from the repository root:

```bash
scripts/sdp/gp2025/gp2025_regenerate_k2_certificate.sh --yes
```

That runs the full pipeline:

1. Generate the solved quotient dual export with Julia/SDPA.
2. Generate the quotient expression export.
3. Generate the full-variable expression export.
4. Rationalize and prepare the exact certificate JSON.
5. Emit and validate pre-Lean provenance.
6. Regenerate `QuotientFiber.lean`.
7. Regenerate the Lean compact-component semantic route.
8. Regenerate the finite K2 semantic bridge (`Bridge.lean` and
   `CompactBridge.lean`) from the checked templates.
9. Run the focused GP2025 Lean validation gates.
10. Emit and validate candidate provenance in the generated tree.
11. Update the K2 external-certificate manifest entry.
12. Pack and verify the local cache archive.

The script does not upload to Zenodo, commit, or push.

If the three expensive Julia export files already exist, skip only the Julia
export phase:

```bash
scripts/sdp/gp2025/gp2025_regenerate_k2_certificate.sh \
  --artifact-dir /path/to/gp2025-k2-artifacts \
  --skip-julia-exports \
  --yes
```

If the artifacts were transferred as an archive:

```bash
mkdir -p /tmp/gp2025-k2-artifacts
tar -C /tmp/gp2025-k2-artifacts -xzf /path/to/gp2025-k2-artifacts.tar.gz
scripts/sdp/gp2025/gp2025_regenerate_k2_certificate.sh \
  --skip-julia-exports \
  --yes
```

If Julia dependencies live in an isolated project:

```bash
scripts/sdp/gp2025/gp2025_regenerate_k2_certificate.sh \
  --julia-project /tmp/gp2025-julia-env \
  --yes
```

To check which artifacts are present and print the command sequence without
running it:

```bash
python3 scripts/sdp/gp2025/gp2025_k2_artifact_status.py \
  --artifact-dir /tmp/gp2025-k2-artifacts \
  --require-provenance-manifest
```

## Julia Environment

The Julia entry point is:

```text
scripts/sdp/gp2025/gp2025_binary_dual_export.jl
```

It needs:

```text
JuMP
SDPAFamily
Combinatorics
```

The production solve uses:

```text
variant = sdpa_gmp
max iteration = 600
```

The recovered rational denominator is:

```text
100000000000000000000
```

If the system Julia environment does not already have the dependencies, create
an isolated project and pass it to the wrapper with `--julia-project`:

```bash
export JULIA_DEPOT_PATH=/tmp/gp_julia_depot
mkdir -p "$JULIA_DEPOT_PATH" /tmp/gp2025-julia-env
julia -e 'using Pkg; Pkg.activate("/tmp/gp2025-julia-env"); Pkg.add(["JuMP", "SDPAFamily", "Combinatorics"]); Pkg.precompile(); Pkg.status()'
julia --project=/tmp/gp2025-julia-env -e 'using JuMP, SDPAFamily, Combinatorics; opt = SDPAFamily.Optimizer(variant = :sdpa_gmp, silent = true); println(typeof(opt))'
```

## Validation Gates

Before Lean generation, the exact bundle is validated with:

```text
--production-k2
--strict-provenance
--expect-rational-denominator 100000000000000000000
```

The full-variable expression export is still required because it supplies the
structural full aggregate component payload. The raw full-objective
stationarity identity is optional and is not used by the compact-component
route when it does not validate.

The bridge step is intentionally short: the fresh generator emits
`BridgeAtoms.lean` from the current expression export, and
`gp2025_gen_lean_k2_bridge.py` installs the stable finite length-13 bridge
templates so `Bridge.lean` imports `BridgeAtoms.lean` directly. It does not
revive the old `BridgeScalar*.lean` or `BridgeMatrix*.lean` proof families.

After Lean generation, the wrapper runs the focused gates from
`gp2025_safe_validate.py`, including:

```text
metrics-k2-static
quotient-fiber-build
bridge-build
compact-bridge-build
compact-semantic-build
compact-objective-build
compact-certificate-build
instance-build
```

The current wrapper runs the large generated K2 gates with 64 Lean threads and
one-hour timeouts. That setting is intended for the large-memory build host
used for this branch; on smaller machines, lower the thread count but expect
the source-semantic build to take substantially longer.

Only after those pass does the wrapper emit candidate provenance, update
`data/external-certificates/manifest.json`, and repack:

```text
data/external-certificates/cache/K_2_13_1-gp2025-sdp-generated.tar.xz
```

## Release QA

After regeneration and local archive verification, run the external certificate
check before the full release chain:

```bash
scripts/external-certificates.py check \
  --proof-mode native \
  --clean-extracted \
  K_2_13_1-gp2025-sdp-generated
```

Then resume or restart release QA. If resuming the failed run from 2026-06-25:

```bash
scripts/release-qa-chain.sh --resume build/release-qa-runs/20260625T063448Z
```

For a final release signal, run the full chain from scratch after the focused
and external certificate gates pass.
