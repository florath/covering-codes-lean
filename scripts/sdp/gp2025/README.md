# GP2025 SDP scripts

This folder contains helper scripts used to reproduce and audit the
Gijswijt--Polak 2025 SDP certificate pipeline for the Lean certificate
`K_2(13,1) >= 607`.

The Julia entry point is based on the public upstream Julia implementation:

- Repository: <https://github.com/CoveringCodes/Julia>
- Paper: "Semidefinite lower bounds for covering codes"
- Authors: Dion Gijswijt and Sven Polak
- Upstream Julia license: MIT, copyright 2024-2026 Dion Gijswijt and Sven Polak

The Julia code in this folder is therefore covered by the MIT notice in
`LICENSE-MIT-JULIA`, not by the BSD-style license used by the rest of this
repository. The Python and shell helpers are local reproducibility and Lean
certificate-generation tools for this repository.

Most scripts are read-only validators or generators. Large generated Lean
certificate modules are not tracked in git; materialize the external certificate
bundle before checking the final Lean target:

```bash
scripts/external-certificates.py materialize K_2_13_1-gp2025-sdp-generated
```

For the production K2 regeneration runbook, including the compact-component
semantic route, the short finite bridge-template step, and the local archive
repacking script, see
`README-K2-REGENERATION.md`.
