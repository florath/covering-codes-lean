# External certificate data

Large proof artifacts can be stored outside git and materialized before the
Lean modules that consume them are built.

The tracked manifest is `manifest.json`.  It records, for each certificate
bundle:

- the mathematical problem and Lean targets using the data;
- the archive filename, size, format, and SHA256 digest;
- download locations, including future Zenodo URLs;
- every extracted file path, byte size, and SHA256 digest;
- any ignored Lean files generated locally from the extracted data.

The `K_8_4_2-lrat` bundle is archived on Zenodo at
<https://zenodo.org/records/20784013> with DOI
`10.5281/zenodo.20784013`.  The manifest pins the versioned record URL and the
archive SHA256 digest, so builds do not rely on mutable metadata redirects.

The `K_9_9_5-tail-values` bundle is archived on Zenodo at
<https://zenodo.org/records/20794263> with DOI
`10.5281/zenodo.20794263`.  Its archive materializes
`data/K_9_9_5/tail/tail-values.txt`; the helper then generates the ignored Lean
module `CoveringCodes/Database/Sources/KnownBounds/K_9_9_5_TailData.lean` from
that text file.

Local archives live in `data/external-certificates/cache/`, which is ignored by
git.  A typical workflow is:

```bash
scripts/external-certificates.py materialize K_8_4_2-lrat
scripts/external-certificates.py check K_8_4_2-lrat --proof-mode native --clean-extracted
scripts/external-certificates.py clean K_8_4_2-lrat --extracted --yes
```

To materialize every external certificate bundle listed in the manifest, use:

```bash
scripts/external-certificates.py materialize --all
```

After the Lean module has been compiled, downstream imports can use the `.olean`
artifact without the extracted certificate files.  A clean rebuild still needs
the external data again.  For generated Lean modules such as the
`K_9_9_5_TailData.lean` table, the ignored generated source remains after
`--clean-extracted` so Lake can still resolve the imported module.

The full QA chain calls the same helper automatically after each native/kernel
clean phase.  Set
`EXTERNAL_CERTIFICATE_STORAGE_LIMIT`, for example `20GiB`, to force external
certificate checks to run in storage-bounded batches:

```bash
EXTERNAL_CERTIFICATE_STORAGE_LIMIT=20GiB scripts/release-qa-chain.sh
```

`check` uses the manifest build driver by default:

```bash
scripts/build-proof-mode.sh kernel TARGETS...
```

Pass `--proof-mode native` for `scripts/build-proof-mode.sh native ...`.
