#!/usr/bin/env nix-shell
#! nix-shell -i bash -p hyperfine fastfetch neofetch uwufetch afetch owofetch maxfetch yafetch bunnyfetch tinyfetch microfetch foodfetch leaf nitch

set -euo pipefail

mkdir -p benchmarks

date_tag=$(date +%Y-%m-%d)
output_dir="benchmarks/${date_tag}"
mkdir -p "$output_dir"

md_outfile="${output_dir}/fetch-benchmarks.md"
json_outfile="${output_dir}/fetch-benchmarks.json"
tmp_md=$(mktemp)
tmp_json=$(mktemp)

echo "# Fetch Benchmarks – ${date_tag}" >"$md_outfile"
echo >>"$md_outfile"

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
  --export-markdown "$tmp_md" \
  --export-json "$tmp_json"

cat "$tmp_md" >>"$md_outfile"
mv "$tmp_json" "$json_outfile"

rm "$tmp_md"

echo "✅ Results written to $output_dir"
