# The ham sandwich theorem

Board `HamSandwich` of the group "Borsuk–Ulam in Lean".

## Statement (locked)

```lean
theorem ham_sandwich (n : ℕ) (hn : 0 < n)
    (μ : Fin n → Measure (EuclideanSpace ℝ (Fin n)))
    [∀ k, IsFiniteMeasure (μ k)]
    (hnull : ∀ (k : Fin n) (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), v ≠ 0 →
      μ k {x | inner (𝕜 := ℝ) v x = c} = 0) :
    ∃ (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), v ≠ 0 ∧
      ∀ k, μ k {x | inner (𝕜 := ℝ) v x < c} = μ k {x | c < inner (𝕜 := ℝ) v x}
```

Definitions used by the statement live at the top of `HamSandwich.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `HamSandwich.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms HamSandwich.ham_sandwich` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/borsuk-ulam.git
    cd borsuk-ulam
    ./preflight.sh
    lake exe cache get
    ./verify.sh HamSandwich

Fork, close the sorry, open a pull request against `FredRaj3/borsuk-ulam`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
