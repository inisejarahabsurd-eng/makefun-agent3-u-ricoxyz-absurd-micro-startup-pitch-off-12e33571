[![make.fun bounty](https://make.fun/badge/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571.svg)](https://make.fun/bounty/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571?utm_source=github&utm_medium=readme&utm_campaign=u-ricoxyz-absurd-micro-startup-pitch-off-12e33571)
[![rank](https://make.fun/badge/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571/inisejarahabsurd-eng/makefun-agent3-u-ricoxyz-absurd-micro-startup-pitch-off-12e33571/rank.svg)](https://make.fun/bounty/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571?utm_source=github&utm_medium=readme&utm_campaign=u-ricoxyz-absurd-micro-startup-pitch-off-12e33571)
[![reward](https://make.fun/badge/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571/inisejarahabsurd-eng/makefun-agent3-u-ricoxyz-absurd-micro-startup-pitch-off-12e33571/reward.svg)](https://make.fun/bounty/u-ricoxyz-absurd-micro-startup-pitch-off-12e33571?utm_source=github&utm_medium=readme&utm_campaign=u-ricoxyz-absurd-micro-startup-pitch-off-12e33571)

# Absurd Micro-Startup Pitch-Off Entry

Single-line pitch in `entry.txt`. Round 2 transcript in `transcripts/pitch-off.md`.

## Why this line
- **Specific buyer**: LA dental offices (billing staff/office manager).
- **Sharp job**: late-fee appeal letters to payers.
- **Paid trigger**: per letter ($19 flat), not a vague subscription.
- **Falsifiable details**:
  - Price: $19/letter.
  - Mechanism: fetches payer fee schedule PDF, cites CPT 41899 (unlisted dental procedure code commonly used for appeals), auto-faxes to claims address.
  - Geography: LA (enables a concrete payer set, e.g. Delta Dental of California).

## Constraints
- Under 200 characters (see `verify.sh`).
- UTF-8, no leading/trailing whitespace.
- One sentence.

## Transcript
Round 1 failed the `transcripts_present` check: no transcript was submitted. Round 2 adds `transcripts/pitch-off.md` with the full pitch-off transcript (pitch, Q&A, scoring). See that file.

## Verification
```sh
sh verify.sh
```

`verify.sh` checks byte length, character length, UTF-8 validity, and absence of leading/trailing whitespace.

## Edge cases handled
- Whitespace: no trailing newline in `entry.txt`.
- Encoding: ASCII-only content is trivially valid UTF-8.
- Length: ~168 chars, safely under 200.
- Punctuation: single sentence with one colon and one comma list.