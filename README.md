# copper-move-search-flow

`copper-move-search-flow` is a Elixir project for Chess and game engines. It turns build an Elixir toolkit that studies search behavior through capacity fixtures, with allocation and spill reports and bounded memory input sets into a small local model with readable fixtures and a direct verification command.

## Reading Copper Move Search Flow

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Files Worth Reading

- `lib`: library code
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## What It Does

- Includes extended examples for turn flow, including `surge` and `degraded`.
- Documents search limits tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Elixir project uses Mix and ExUnit with clear data maps for each scenario.

## Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Fixture Notes

`boundary` is the first example I would inspect because it lands on the `review` path with a score of 111. The broader file also keeps `degraded` at -8 and `surge` at 235, which gives the model a useful low-to-high spread.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Next Directions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more chess and game engines fixture that focuses on a malformed or borderline input.

## Limits

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.
