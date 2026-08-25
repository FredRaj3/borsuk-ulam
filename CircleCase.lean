/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# Borsuk–Ulam for the circle — locked statement

Warm-up board "CircleCase" of the Problem Market group "Borsuk–Ulam in Lean". A submission
closes the `sorry` below, keeping the statement verbatim. Everything from the top of this
file through the `:= by` is the locked region. See tasks/CircleCase.md.
-/
import Mathlib

open Metric

namespace CircleCase

/-- **Borsuk–Ulam for the circle**: a continuous real-valued function on `S¹` agrees at
some pair of antipodes. -/
theorem borsuk_ulam_circle (f : EuclideanSpace ℝ (Fin 2) → ℝ)
    (hf : ContinuousOn f (sphere 0 1)) :
    ∃ x ∈ sphere (0 : EuclideanSpace ℝ (Fin 2)) 1, f x = f (-x) := by
  sorry

end CircleCase
