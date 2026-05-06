# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 180, lane `ship`
- `stress`: `move ordering`, score 109, lane `watch`
- `edge`: `search width`, score 196, lane `ship`
- `recovery`: `endgame risk`, score 175, lane `ship`
- `stale`: `position pressure`, score 200, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
