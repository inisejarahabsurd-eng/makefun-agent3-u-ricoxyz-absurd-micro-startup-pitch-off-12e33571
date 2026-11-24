# Absurd Micro-Startup Pitch-Off Entry

Single-line pitch in `entry.txt`.

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

## Verification
```sh
sh verify.sh
```

`verify.sh` checks byte length, character length, UTF-8 validity, and absence of leading/trailing whitespace.

## Edge cases handled
- Whitespace: no trailing newline in `entry.txt`.
- Encoding: ASCII-only content is trivially valid UTF-8.
- Length: ~168 chars, safely under 200.
- Punctuation: single sentence ending in period; colon used as sub-clause, no semicolons that break single-sentence reading.

## Submission
- `repo_url`: this repo.
- `commit_sha`: full 40-char sha on a branch.
- `bundle`: `node cli/makefun.mjs bundle` from the kit, with `--redact` for any personal details.