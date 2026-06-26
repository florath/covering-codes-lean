#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
REPO_ROOT=$(cd -- "$SCRIPT_DIR/../../.." && pwd)

BUNDLE_ID=K_2_13_1-gp2025-sdp-generated
GEN_DIR=CoveringCodes/SDP/GijswijtPolak2025/Generated/BinaryK2_13_1
DENOMINATOR=${GP2025_K2_DENOMINATOR:-100000000000000000000}
ARTIFACT_DIR=${GP2025_K2_ARTIFACT_DIR:-/tmp/gp2025-k2-artifacts}
JULIA_BIN=${JULIA_BIN:-julia}
JULIA_PROJECT=${JULIA_PROJECT:-}

RUN_JULIA_EXPORTS=1
RUN_FOCUSED_GATES=1
RUN_EXTERNAL_CHECK=0
UPDATE_EXTERNAL_BUNDLE=1
CLEAN_GENERATED=1
YES=0

usage() {
  cat <<'EOF'
Usage:
  scripts/sdp/gp2025/gp2025_regenerate_k2_certificate.sh [options]

Options:
  --artifact-dir DIR       Directory for gp_binary_13_1 artifacts.
                           Default: /tmp/gp2025-k2-artifacts
  --julia-project DIR      Run Julia exports with julia --project=DIR.
  --julia-bin PATH         Julia executable. Default: julia
  --skip-julia-exports     Use existing dual/expr/full_expr JSON artifacts.
  --skip-focused-gates     Regenerate Lean but skip focused Lean validation gates.
  --run-external-check     After packing, run external-certificates.py check in native mode.
  --no-update-external     Do not update manifest or repack the local external archive.
  --no-clean-generated     Do not remove the existing generated K2 Lean directory first.
  --yes                    Allow overwriting generated Lean and the local cache archive.
  -h, --help               Show this help.

The script does not upload to Zenodo, commit, or push.
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --artifact-dir)
      ARTIFACT_DIR=$2
      shift 2
      ;;
    --julia-project)
      JULIA_PROJECT=$2
      shift 2
      ;;
    --julia-bin)
      JULIA_BIN=$2
      shift 2
      ;;
    --skip-julia-exports)
      RUN_JULIA_EXPORTS=0
      shift
      ;;
    --skip-focused-gates)
      RUN_FOCUSED_GATES=0
      shift
      ;;
    --run-external-check)
      RUN_EXTERNAL_CHECK=1
      shift
      ;;
    --no-update-external)
      UPDATE_EXTERNAL_BUNDLE=0
      shift
      ;;
    --no-clean-generated)
      CLEAN_GENERATED=0
      shift
      ;;
    --yes)
      YES=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

cd "$REPO_ROOT"

SOLVED_JSON=$ARTIFACT_DIR/gp_binary_13_1_dual.json
EXPR_JSON=$ARTIFACT_DIR/gp_binary_13_1_expr.json
FULL_EXPR_JSON=$ARTIFACT_DIR/gp_binary_13_1_full_expr.json
RATIONALIZATION_JSON=$ARTIFACT_DIR/gp_binary_13_1_rationalization_summary.json
EXACT_JSON=$ARTIFACT_DIR/gp_binary_13_1_exact_certificate_data_fullagg_components_family_200_20.json
PRE_PROVENANCE=$ARTIFACT_DIR/CertificateProvenance.json
PRE_MANIFEST=$ARTIFACT_DIR/MANIFEST.sha256

run() {
  printf '+'
  printf ' %q' "$@"
  printf '\n'
  "$@"
}

require_file() {
  local path=$1
  if [[ ! -f "$path" ]]; then
    echo "missing required file: $path" >&2
    exit 1
  fi
}

require_yes() {
  local action=$1
  if [[ "$YES" -ne 1 ]]; then
    echo "refusing to $action without --yes" >&2
    exit 2
  fi
}

julia_cmd=("$JULIA_BIN")
if [[ -n "$JULIA_PROJECT" ]]; then
  julia_cmd+=("--project=$JULIA_PROJECT")
fi

echo "GP2025 K2 regeneration"
echo "repo: $REPO_ROOT"
echo "artifact_dir: $ARTIFACT_DIR"
echo "denominator: $DENOMINATOR"
echo

mkdir -p "$ARTIFACT_DIR"

run python3 scripts/sdp/gp2025/gp2025_k2_artifact_status.py \
  --artifact-dir "$ARTIFACT_DIR" \
  --require-provenance-manifest || true

if [[ "$RUN_JULIA_EXPORTS" -eq 1 ]]; then
  run "${julia_cmd[@]}" -e \
    'using JuMP, SDPAFamily, Combinatorics; println("GP2025 Julia dependencies OK")'

  run "${julia_cmd[@]}" scripts/sdp/gp2025/gp2025_binary_dual_export.jl \
    13 1 "$SOLVED_JSON" \
    --silent \
    --variant=sdpa_gmp \
    --max-iteration=600
  run wc -c "$SOLVED_JSON"
  run sha256sum "$SOLVED_JSON"

  run "${julia_cmd[@]}" scripts/sdp/gp2025/gp2025_binary_dual_export.jl \
    13 1 "$EXPR_JSON" \
    --no-solve \
    --silent \
    --include-expressions \
    --variant=sdpa_gmp

  run "${julia_cmd[@]}" scripts/sdp/gp2025/gp2025_binary_dual_export.jl \
    13 1 "$FULL_EXPR_JSON" \
    --full-variables \
    --no-solve \
    --silent \
    --include-expressions \
    --variant=sdpa_gmp
else
  require_file "$SOLVED_JSON"
  require_file "$EXPR_JSON"
  require_file "$FULL_EXPR_JSON"
fi

run python3 scripts/sdp/gp2025/gp2025_rationalize_dual.py \
  "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --L 607 \
  --rational-denominator "$DENOMINATOR" \
  --correct-nonnegative \
  --check-affine \
  --out "$RATIONALIZATION_JSON"

run python3 scripts/sdp/gp2025/gp2025_prepare_exact_certificate.py \
  "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --full-expressions-json "$FULL_EXPR_JSON" \
  --out "$EXACT_JSON" \
  --L 607 \
  --rational-denominator "$DENOMINATOR" \
  --full-scalar-component-nonmatrix-chunk-size 200 \
  --full-scalar-component-matrix-cut-chunk-size 20

run python3 scripts/sdp/gp2025/gp2025_emit_certificate_provenance.py \
  "$EXACT_JSON" \
  --repo-root . \
  --solved-export "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --full-expressions-json "$FULL_EXPR_JSON" \
  --candidate-status non_candidate \
  --candidate-blocker lean-generation-and-focused-gates-pending \
  --production-k2 \
  --strict-provenance \
  --provenance "$PRE_PROVENANCE" \
  --manifest "$PRE_MANIFEST" \
  --force

run python3 scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py \
  "$EXACT_JSON" \
  --solved-export "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --full-expressions-json "$FULL_EXPR_JSON" \
  --provenance "$PRE_PROVENANCE" \
  --manifest "$PRE_MANIFEST" \
  --production-k2 \
  --strict-provenance \
  --expect-rational-denominator "$DENOMINATOR" \
  --json

if [[ "$CLEAN_GENERATED" -eq 1 && -d "$GEN_DIR" ]]; then
  require_yes "remove and regenerate $GEN_DIR"
  run rm -rf "$GEN_DIR"
fi
mkdir -p "$GEN_DIR"

run python3 scripts/sdp/gp2025/gp2025_gen_lean_quotient_fibers.py \
  --n 13 \
  --r 1 \
  --qvars 123 \
  --full-vars 560 \
  --module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 \
  --name binaryK2_13_1 \
  --output "$GEN_DIR/QuotientFiber.lean"

run python3 scripts/sdp/gp2025/gp2025_gen_lean_quotient_certificate.py \
  "$EXACT_JSON" \
  --expressions-json "$EXPR_JSON" \
  --split-dir "$GEN_DIR" \
  --module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 \
  --name binaryK2_13_1 \
  --semantic-bridge-module CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.CompactBridge \
  --compact-component-semantic \
  --full-aggregate-semantic-structural \
  --component-eq-chunk-size 40 \
  --scalar-component-eq-chunk-size 40 \
  --compact-component-semantic-coeff-chunk-size 20 \
  --compact-scalar-component-semantic-coeff-chunk-size 20 \
  --compact-component-eq-chunk-size 20 \
  --compact-scalar-group-size 4 \
  --compact-scalar-source-data \
  --compact-scalar-source-derived-data \
  --compact-scalar-source-semantic \
  --compact-scalar-source-chunk-size 1 \
  --compact-objective-eq-chunk-size 40 \
  --full-objective-eq-chunk-size 20

run python3 scripts/sdp/gp2025/gp2025_gen_lean_k2_bridge.py \
  --output-dir "$GEN_DIR" \
  --module-prefix CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1 \
  --name binaryK2_13_1

if [[ ! -f "$GEN_DIR/Bridge.lean" || ! -f "$GEN_DIR/CompactBridge.lean" ]]; then
  echo "generated payload is missing Bridge.lean or CompactBridge.lean" >&2
  exit 1
fi

if [[ ! -f "$GEN_DIR/CompactObjective.lean" || ! -f "$GEN_DIR/CompactSemantic.lean" ]]; then
  echo "generated payload is missing CompactObjective.lean or CompactSemantic.lean" >&2
  exit 1
fi

if [[ ! -f "$GEN_DIR/CompactComponentEq.lean" || ! -f "$GEN_DIR/CompactScalarSourceSemantic.lean" ]]; then
  echo "generated payload is missing compact component route modules" >&2
  exit 1
fi

if [[ "$RUN_FOCUSED_GATES" -eq 1 ]]; then
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target metrics-k2-static
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target quotient-fiber-build \
    --threads 2 \
    --timeout 600
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target bridge-build \
    --threads 2 \
    --timeout 1200
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target compact-bridge-build \
    --threads 2 \
    --timeout 1200
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target compact-semantic-build \
    --threads 64 \
    --timeout 3600
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target compact-objective-build \
    --threads 64 \
    --timeout 3600
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target compact-certificate-build \
    --threads 64 \
    --timeout 3600
  run python3 scripts/sdp/gp2025/gp2025_safe_validate.py \
    --target instance-build \
    --threads 64 \
    --timeout 3600
fi

run python3 scripts/sdp/gp2025/gp2025_emit_certificate_provenance.py \
  "$EXACT_JSON" \
  --repo-root . \
  --solved-export "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --full-expressions-json "$FULL_EXPR_JSON" \
  --generated-dir "$GEN_DIR" \
  --include-generated-lean \
  --expected-k2-lean-files 20978 \
  --expected-native-decide 14664 \
  --candidate-status candidate \
  --production-k2 \
  --strict-provenance \
  --provenance "$GEN_DIR/CertificateProvenance.json" \
  --manifest "$GEN_DIR/MANIFEST.sha256" \
  --force

run python3 scripts/sdp/gp2025/gp2025_validate_certificate_bundle.py \
  "$EXACT_JSON" \
  --solved-export "$SOLVED_JSON" \
  --expressions-json "$EXPR_JSON" \
  --full-expressions-json "$FULL_EXPR_JSON" \
  --provenance "$GEN_DIR/CertificateProvenance.json" \
  --manifest "$GEN_DIR/MANIFEST.sha256" \
  --production-k2 \
  --strict-provenance \
  --expect-rational-denominator "$DENOMINATOR" \
  --json

if [[ "$UPDATE_EXTERNAL_BUNDLE" -eq 1 ]]; then
  require_yes "update data/external-certificates/manifest.json and repack the local archive"
  tmp_manifest=$(mktemp "$ARTIFACT_DIR/external-manifest.XXXXXX.json")
  run python3 - "$GEN_DIR" "$tmp_manifest" "$BUNDLE_ID" <<'PY'
import hashlib
import json
import sys
from pathlib import Path

repo = Path.cwd()
gen_dir = (repo / sys.argv[1]).resolve()
tmp_manifest = Path(sys.argv[2])
bundle_id = sys.argv[3]
manifest_path = repo / "data" / "external-certificates" / "manifest.json"

def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()

manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
bundle = next((item for item in manifest["bundles"] if item["id"] == bundle_id), None)
if bundle is None:
    raise SystemExit(f"missing bundle {bundle_id!r}")

files = []
total = 0
for path in sorted(gen_dir.rglob("*")):
    if not path.is_file():
        continue
    rel = path.relative_to(repo).as_posix()
    size = path.stat().st_size
    total += size
    files.append({"path": rel, "bytes": size, "sha256": sha256_file(path)})

if not files:
    raise SystemExit(f"no files found under {gen_dir}")

bundle["files"] = files
bundle["generated_files"] = []
bundle["unpacked"] = {
    "root": gen_dir.relative_to(repo).as_posix(),
    "bytes": total,
}
bundle["archive"]["bytes"] = None
bundle["archive"]["sha256"] = None

tmp_manifest.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
print(f"prepared temporary manifest with {len(files)} files and {total} unpacked bytes")
PY

  run python3 scripts/external-certificates.py \
    --manifest "$tmp_manifest" \
    pack \
    --force \
    "$BUNDLE_ID"

  run python3 - "$tmp_manifest" "$BUNDLE_ID" <<'PY'
import hashlib
import json
import sys
from pathlib import Path

repo = Path.cwd()
tmp_manifest = Path(sys.argv[1])
bundle_id = sys.argv[2]
manifest_path = repo / "data" / "external-certificates" / "manifest.json"
manifest = json.loads(tmp_manifest.read_text(encoding="utf-8"))
bundle = next((item for item in manifest["bundles"] if item["id"] == bundle_id), None)
if bundle is None:
    raise SystemExit(f"missing bundle {bundle_id!r}")

download = bundle.get("download", {})
archive_rel = download.get("local_path")
if archive_rel:
    archive_path = repo / archive_rel
else:
    cache_dir = repo / manifest.get("default_cache_dir", "data/external-certificates/cache")
    archive_path = cache_dir / bundle["archive"]["filename"]

digest = hashlib.sha256()
with archive_path.open("rb") as handle:
    for chunk in iter(lambda: handle.read(1024 * 1024), b""):
        digest.update(chunk)

bundle["archive"]["bytes"] = archive_path.stat().st_size
bundle["archive"]["sha256"] = digest.hexdigest()
manifest_path.write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
print(f"updated {manifest_path.relative_to(repo)}")
print(f"archive bytes: {bundle['archive']['bytes']}")
print(f"archive sha256: {bundle['archive']['sha256']}")
PY

  run python3 scripts/external-certificates.py verify \
    --archive \
    --files \
    "$BUNDLE_ID"
fi

if [[ "$RUN_EXTERNAL_CHECK" -eq 1 ]]; then
  run python3 scripts/external-certificates.py check \
    --proof-mode native \
    --clean-extracted \
    "$BUNDLE_ID"
fi

echo
echo "GP2025 K2 regeneration finished."
echo "Local archive:"
echo "  data/external-certificates/cache/K_2_13_1-gp2025-sdp-generated.tar.xz"
echo
echo "Next steps:"
echo "  1. Review the changed manifest and generated payload."
echo "  2. Upload the archive to Zenodo and replace the pending Zenodo metadata."
echo "  3. Run release QA."
