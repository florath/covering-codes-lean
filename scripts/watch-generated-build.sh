#!/usr/bin/env bash
# Poll active Lean workers that are compiling generated table chunks.
set -euo pipefail

interval="${1:-10}"

while true; do
  now="$(date '+%Y-%m-%d %H:%M:%S')"
  rows="$(
    ps -eo pid,etime,%cpu,%mem,rss,args |
      awk '
        /GeneratedTable\/Chunk[0-9]+\.lean/ && !/awk/ {
          match($0, /Chunk[0-9]+\.lean/)
          chunk = substr($0, RSTART, RLENGTH)
          printf "%-13s pid=%-7s elapsed=%-10s cpu=%6s%% rss=%7.1f MiB\n",
            chunk, $1, $2, $3, $5 / 1024
        }
      '
  )"

  echo "==> ${now}"
  if [[ -n "${rows}" ]]; then
    printf '%s\n' "${rows}"
  else
    echo "No active GeneratedTable chunk compilers."
  fi
  sleep "${interval}"
done
