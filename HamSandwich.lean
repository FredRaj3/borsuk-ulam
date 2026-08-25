/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# The ham sandwich theorem — locked statement

Corollary board "HamSandwich" of the Problem Market group "Borsuk–Ulam in Lean". A
submission closes the `sorry` below, keeping the statement verbatim. Everything from the
top of this file through the `:= by` is the locked region. See tasks/HamSandwich.md.
-/
import Mathlib

open Metric MeasureTheory

namespace HamSandwich

/-- **Ham sandwich**: `n ≥ 1` finite Borel measures on `ℝⁿ`, each vanishing on affine
hyperplanes, are simultaneously bisected by a single affine hyperplane. (`0 < n` is
required: at `n = 0` no nonzero normal vector exists.) -/
theorem ham_sandwich (n : ℕ) (hn : 0 < n)
    (μ : Fin n → Measure (EuclideanSpace ℝ (Fin n)))
    [∀ k, IsFiniteMeasure (μ k)]
    (hnull : ∀ (k : Fin n) (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), v ≠ 0 →
      μ k {x | inner (𝕜 := ℝ) v x = c} = 0) :
    ∃ (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), v ≠ 0 ∧
      ∀ k, μ k {x | inner (𝕜 := ℝ) v x < c} = μ k {x | c < inner (𝕜 := ℝ) v x} := by
  sorry

end HamSandwich
