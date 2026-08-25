/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# The Borsuk–Ulam theorem — locked statement

Capstone board "BorsukUlam" of the Problem Market group "Borsuk–Ulam in Lean". A submission
closes the `sorry` below, keeping the statement verbatim. Everything from the top of this
file through the `:= by` is the locked region. See tasks/BorsukUlam.md.
-/
import Mathlib

open Metric

namespace BorsukUlam

/-- **Borsuk–Ulam**: every continuous map `Sⁿ → ℝⁿ` identifies some pair of antipodal
points. -/
theorem borsuk_ulam (n : ℕ)
    (f : EuclideanSpace ℝ (Fin (n + 1)) → EuclideanSpace ℝ (Fin n))
    (hf : ContinuousOn f (sphere 0 1)) :
    ∃ x ∈ sphere (0 : EuclideanSpace ℝ (Fin (n + 1))) 1, f x = f (-x) := by
  sorry

end BorsukUlam
