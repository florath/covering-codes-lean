#!/usr/bin/env bash
# Cheap metadata check for the committed generated table.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${root}"

generated="CoveringCodes/Database/GeneratedTable.lean"
chunk_dir="CoveringCodes/Database/GeneratedTable"
key_file="CoveringCodes/Database/Key.lean"

fail() {
  echo "FAIL: $*" >&2
  exit 1
}

nat_def() {
  sed -n "s/^def $1 : Nat := \([0-9][0-9]*\)$/\1/p" "${key_file}"
}

header_value() {
  sed -n "s/^--   $1[[:space:]]*=[[:space:]]*\([0-9][0-9]*\)$/\1/p" "${generated}"
}

read -r declared_entries declared_chunks declared_chunk_size < <(
  sed -n 's/^-- \([0-9][0-9]*\) entries in \([0-9][0-9]*\) chunks of [^0-9]*\([0-9][0-9]*\)\.$/\1 \2 \3/p' "${generated}"
)

[[ -n "${declared_entries:-}" ]] || fail "could not parse generated-table summary header"

actual_chunks="$(find "${chunk_dir}" -maxdepth 1 -type f -name 'Chunk*.lean' | wc -l | tr -d ' ')"
imported_chunks="$(grep -Ec '^import CoveringCodes\.Database\.GeneratedTable\.Chunk[0-9]+$' "${generated}")"
actual_entries="$(grep -hc '^  { key :=' "${chunk_dir}"/Chunk*.lean | awk '{s += $1} END {print s + 0}')"

compute_q="$(header_value computeQMax)"
compute_n="$(header_value computeNMax)"
compute_r="$(header_value computeRMax)"
max_passes="$(header_value maxPasses)"
done_at_pass="$(header_value doneAtPass)"
chunk_size="$(header_value chunkSize)"

[[ -n "${compute_q}" && -n "${compute_n}" && -n "${compute_r}" ]] || fail "could not parse compute range"
[[ -n "${max_passes}" && -n "${done_at_pass}" && -n "${chunk_size}" ]] || fail "could not parse pass/chunk metadata"

source_q="$(nat_def computeQMax)"
source_n="$(nat_def computeNMax)"
source_r="$(nat_def computeRMax)"
expected_max_passes="$(( (source_q + 1) * (source_n + 1) * (source_r + 1) ))"

[[ "${declared_chunks}" = "${actual_chunks}" ]] || fail "declared chunks ${declared_chunks}, found ${actual_chunks}"
[[ "${declared_chunks}" = "${imported_chunks}" ]] || fail "declared chunks ${declared_chunks}, imports ${imported_chunks}"
[[ "${declared_entries}" = "${actual_entries}" ]] || fail "declared entries ${declared_entries}, found ${actual_entries}"
[[ "${declared_chunk_size}" = "${chunk_size}" ]] || fail "summary chunk size ${declared_chunk_size}, setting ${chunk_size}"

[[ "${compute_q}" = "${source_q}" ]] || fail "computeQMax header ${compute_q}, source ${source_q}"
[[ "${compute_n}" = "${source_n}" ]] || fail "computeNMax header ${compute_n}, source ${source_n}"
[[ "${compute_r}" = "${source_r}" ]] || fail "computeRMax header ${compute_r}, source ${source_r}"
[[ "${max_passes}" = "${expected_max_passes}" ]] || fail "maxPasses header ${max_passes}, expected ${expected_max_passes}"
[[ "${declared_entries}" = "${max_passes}" ]] || fail "entry count ${declared_entries}, maxPasses ${max_passes}"
[[ "${done_at_pass}" -ge 1 && "${done_at_pass}" -le "${max_passes}" ]] || fail "doneAtPass ${done_at_pass} outside 1..${max_passes}"

for i in $(seq 0 $((declared_chunks - 1))); do
  [[ -f "${chunk_dir}/Chunk${i}.lean" ]] || fail "missing Chunk${i}.lean"
done

echo "Generated table metadata OK:"
echo "  entries: ${actual_entries}"
echo "  chunks: ${actual_chunks}"
echo "  chunkSize: ${chunk_size}"
echo "  compute range: q<=${compute_q}, n<=${compute_n}, r<=${compute_r}"
echo "  maxPasses: ${max_passes}"
echo "  doneAtPass: ${done_at_pass}"
