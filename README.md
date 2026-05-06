# copper-move-search-flow

`copper-move-search-flow` is a Elixir project in chess and game engines. Its focus is to build an Elixir toolkit that studies search behavior through capacity fixtures, with allocation and spill reports and bounded memory input sets.

## Project Rationale

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Copper Move Search Flow Review Notes

`stale` and `stress` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Feature Set

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/copper-move-search-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `move ordering`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Next Improvements

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
