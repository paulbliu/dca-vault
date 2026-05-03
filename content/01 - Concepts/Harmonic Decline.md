# Harmonic Decline

**Created:** 2026-04-29
**Tags:** #concept #dca #arps

## Definition
**Harmonic decline** is the special case of [[Hyperbolic Decline]] where **b = 1**. It represents the slowest of the Arps decline types and produces the **most optimistic EUR** estimate.

## Key Equation
$$
q(t) = \frac{q_i}{1 + D_i \cdot t}
$$
See: [[Arps Harmonic Equation]]

## Characteristics
- **Straight line** on a **log-log plot** of rate vs. cumulative production
- **Decline rate decreases linearly** with time
- **Highest EUR** of the three Arps curves (for the same initial parameters)
- Cumulative production grows as a **logarithmic function** — theoretically unbounded if extrapolated forever

## Assumptions / Limitations

> [!check] Required Conditions
> - Boundary-dominated flow
> - Gravity-drainage-dominated or water-drive reservoirs
> - Strong pressure support mechanism

> [!warning] Limitations
> - **Optimistic** — can overestimate reserves if misapplied
> - **Rarely observed** in pure form; often an artifact of data fitting
> - Cumulative $N_p \to \infty$ as $t \to \infty$ — requires a terminal decline or economic cutoff
> - Avoid for unconventional wells

## When to Use
- **Gravity drainage reservoirs** (thick, dipping formations with high permeability)
- Strong **water-drive** reservoirs where aquifer maintains pressure
- **Tank-type** reservoirs with unusual pressure support
- Occasionally as an **upper bound** in P10/P50/P90 reserves estimation

## Physical Interpretation
Harmonic behavior physically means the reservoir is receiving **pressure support** proportional to withdrawal, keeping production from falling off as fast as a purely depletion-driven system would.

## Relation to Other Decline Types
| Type                    | b-value   | EUR Ranking                   |
| ----------------------- | --------- | ----------------------------- |
| [[Exponential Decline]] | 0         | Lowest (most conservative)    |
| [[Hyperbolic Decline]]  | 0 < b < 1 | Middle                        |
| **Harmonic Decline**    | **1**     | **Highest (most optimistic)** |

## Related
- [[Arps Equations]]
- [[Exponential Decline]]
- [[Hyperbolic Decline]]
- [[b-factor interpretation]]
- [[EUR Estimation]]
- [[Arps Harmonic Equation]]

## References
- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.