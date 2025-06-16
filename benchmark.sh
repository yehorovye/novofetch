#!/usr/bin/env nix-shell
#! nix-shell -i bash -p hyperfine fastfetch neofetch uwufetch afetch owofetch maxfetch yafetch bunnyfetch tinyfetch microfetch foodfetch leaf nitch

set -euo pipefail

mkdir -p benchmarks

date_tag=$(date +%Y-%m-%d)
outfile="benchmarks/${date_tag}-fetch-benchmarks.md"
tmp=$(mktemp)

echo "# Fetch Benchmarks – ${date_tag}" >"$outfile"
echo >>"$outfile"

# build the fetch :))))
v -prod -cc tcc -cflags "-march=native -mtune=native -O3" .

hyperfine \
  "./novofetch" \
  "fastfetch" \
  "neofetch" \
  "uwufetch" \
  "afetch" \
  "owofetch" \
  "maxfetch" \
  "yafetch" \
  "bunnyfetch" \
  "tinyfetch" \
  "microfetch" \
  "foodfetch" \
  "leaf" \
  "nitch" \
  -i -N --warmup 5 \
  --export-markdown "$tmp"

cat "$tmp" >>"$outfile"
rm "$tmp"

echo "✅ Results written to $outfile"
