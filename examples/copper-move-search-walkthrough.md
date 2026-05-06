# Copper Move Search Flow Walkthrough

I use this file as a small checklist before changing the Elixir implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 180 | ship |
| stress | move ordering | 109 | watch |
| edge | search width | 196 | ship |
| recovery | endgame risk | 175 | ship |
| stale | position pressure | 200 | ship |

Start with `stale` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stress` becomes less cautious without a clear reason, I would inspect the drag input first.
