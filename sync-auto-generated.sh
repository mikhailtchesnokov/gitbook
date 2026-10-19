#!/usr/bin/env bash
#
# sync-auto-generated.sh
#
# Replaces the content between:
#   <!-- AUTO-GENERATED:START -->
#   ...
#   <!-- AUTO-GENERATED:END -->
# in TARGET_FILE with the equivalent block taken from SOURCE_FILE.
# The marker lines themselves are preserved (untouched) in TARGET_FILE.
#
# Usage:
#   ./sync-auto-generated.sh <target_file> <source_file>
#
# Example:
#   ./sync-auto-generated.sh docs/SUMMARY.md ../other-repo/docs/SUMMARY.md
#
# Exit codes:
#   0 success
#   1 usage error
#   2 missing file
#   3 markers not found / malformed in one of the files

set -euo pipefail

START_MARKER="<!-- AUTO-GENERATED:START -->"
END_MARKER="<!-- AUTO-GENERATED:END -->"

usage() {
    echo "Usage: $0 <target_file> <source_file>" >&2
    exit 1
}

[[ $# -eq 2 ]] || usage

TARGET_FILE="$1"
SOURCE_FILE="$2"

[[ -f "$TARGET_FILE" ]] || { echo "Error: target file not found: $TARGET_FILE" >&2; exit 2; }
[[ -f "$SOURCE_FILE" ]] || { echo "Error: source file not found: $SOURCE_FILE" >&2; exit 2; }

# --- Sanity check: markers must exist exactly once in each file ---
check_markers() {
    local file="$1"
    local start_count end_count
    start_count=$(grep -Fc "$START_MARKER" "$file" || true)
    end_count=$(grep -Fc "$END_MARKER" "$file" || true)

    if [[ "$start_count" -ne 1 || "$end_count" -ne 1 ]]; then
        echo "Error: '$file' must contain exactly one START and one END marker (found START=$start_count END=$end_count)" >&2
        exit 3
    fi
}

check_markers "$TARGET_FILE"

# --- Build the replacement block ---
# If SOURCE_FILE itself contains the markers, use only what's between them
# (old behavior). Otherwise, treat the ENTIRE content of SOURCE_FILE as the
# block to insert, whole, as-is.
NEW_BLOCK_FILE=$(mktemp)
TMP_OUT=$(mktemp)
trap 'rm -f "$NEW_BLOCK_FILE" "$TMP_OUT"' EXIT

source_start_count=$(grep -Fc "$START_MARKER" "$SOURCE_FILE" || true)
source_end_count=$(grep -Fc "$END_MARKER" "$SOURCE_FILE" || true)

if [[ "$source_start_count" -eq 1 && "$source_end_count" -eq 1 ]]; then
    # Source has its own markers -> extract only the block between them
    awk -v start="$START_MARKER" -v end="$END_MARKER" '
        $0 == start { in_block=1; next }
        $0 == end   { in_block=0; next }
        in_block    { print }
    ' "$SOURCE_FILE" > "$NEW_BLOCK_FILE"
else
    # Source has no markers (or malformed) -> insert the whole file as-is
    cat "$SOURCE_FILE" > "$NEW_BLOCK_FILE"
fi

if [[ ! -s "$NEW_BLOCK_FILE" ]]; then
    echo "Warning: replacement block from '$SOURCE_FILE' is empty." >&2
fi

# --- Rebuild TARGET_FILE: keep everything outside the markers,
#     keep the marker lines, inject the new block between them ---
awk -v start="$START_MARKER" -v end="$END_MARKER" -v blockfile="$NEW_BLOCK_FILE" '
    $0 == start {
        print
        while ((getline line < blockfile) > 0) print line
        close(blockfile)
        in_block=1
        next
    }
    $0 == end {
        print
        in_block=0
        next
    }
    in_block { next }   # skip old content between markers
    { print }
' "$TARGET_FILE" > "$TMP_OUT"

mv "$TMP_OUT" "$TARGET_FILE"
trap - EXIT
rm -f "$NEW_BLOCK_FILE"

echo "Done: updated AUTO-GENERATED section in '$TARGET_FILE' from '$SOURCE_FILE'."
