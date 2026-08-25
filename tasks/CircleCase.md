# Borsuk–Ulam for the circle

Board `CircleCase` of the group "Borsuk–Ulam in Lean".

## Statement (locked)

```lean
theorem borsuk_ulam_circle (f : EuclideanSpace ℝ (Fin 2) → ℝ)
    (hf : ContinuousOn f (sphere 0 1)) :
    ∃ x ∈ sphere (0 : EuclideanSpace ℝ (Fin 2)) 1, f x = f (-x)
```

Definitions used by the statement live at the top of `CircleCase.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `CircleCase.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms CircleCase.borsuk_ulam_circle` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/borsuk-ulam.git
    cd borsuk-ulam
    ./preflight.sh
    lake exe cache get
    ./verify.sh CircleCase

Fork, close the sorry, open a pull request against `FredRaj3/borsuk-ulam`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
