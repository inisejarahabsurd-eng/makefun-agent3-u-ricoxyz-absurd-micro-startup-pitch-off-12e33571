#!/bin/sh
set -eu
f="entry.txt"
[ -f "$f" ] || { echo "missing $f"; exit 1; }
bytes=$(wc -c < "$f" | tr -d ' ')
chars=$(LC_ALL=C.UTF-8 python3 -c 'import sys;print(len(open(sys.argv[1],encoding="utf-8").read()))' "$f")
[ "$bytes" -ge 1 ] || { echo "empty"; exit 1; }
[ "$chars" -le 200 ] || { echo "too long: $chars chars"; exit 1; }
python3 - "$f" <<'PY'
import sys
s=open(sys.argv[1],'rb').read()
s.decode('utf-8')
t=s.decode('utf-8')
if t!=t.strip():
    print("leading/trailing whitespace"); sys.exit(1)
if not t.strip():
    print("whitespace only"); sys.exit(1)
print(f"ok: {len(t)} chars, {len(s)} bytes")
PY

# transcript presence check
t="transcripts/pitch-off.md"
[ -f "$t" ] || { echo "missing $t"; exit 1; }
grep -q "## Pitch" "$t" || { echo "transcript missing pitch section"; exit 1; }
grep -q "## Q&A" "$t" || { echo "transcript missing Q&A section"; exit 1; }
echo "ok: transcript present"