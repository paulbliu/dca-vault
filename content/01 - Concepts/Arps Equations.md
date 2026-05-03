
**Created:** 2026-04-29
**Tags:** #concept #dca #arps

## Definition
The **Arps equations** are a family of empirical decline curve models introduced by **J.J. Arps in 1945** ("Analysis of Decline Curves", *Transactions of the AIME*). They describe how a well's production rate declines over time during **boundary-dominated flow (BDF)** under constant bottomhole pressure.

Three decline types are defined by the **decline exponent `b`**:

| Type | b-value | Behavior |
|------|---------|----------|
| [[Exponential Decline]] | b = 0 | Constant fractional decline rate |
| [[Hyperbolic Decline]] | 0 < b < 1 | Decline rate decreases with time |
| [[Harmonic Decline]] | b = 1 | Special case of hyperbolic |

## Key Equation(s)
The general **hyperbolic form** encompasses all three:
$$
q(t) = \frac{q_i}{(1 + b \cdot D_i \cdot t)^{1/b}}
$$

See dedicated notes:
- [[Arps Hyperbolic Equation]]
- [[Arps Exponential Equation]]
- [[Arps Harmonic Equation]]

## Assumptions / Limitations
- [y]  Well is in **boundary-dominated flow** (not transient)
- [Y] Constant **bottomhole pressure**
- [Y] Constant **drainage  and **reservoir properties**
 [ ! ] **Not valid** during transient flow (common in unconventional wells early in life)
 [ ! ] For unconventional wells, hyperbolic `b > 1` is physically unrealistic long-term, leads to overestimated EUR 
 [ ! ] Use [[Modified Hyperbolic (Robertson)]] or [[Duong Method]] for shale/tight wells

## When to Use
- **Conventional wells** in BDF, Arps works well
- **Unconventional wells**,  only after transient flow ends, or use modern methods
- Quick EUR estimates when detailed reservoir data isn't available
- Benchmarking against more sophisticated models

## Related
- [[Transient vs Boundary-Dominated Flow]]
- [[b-factor interpretation]]
- [[EUR Estimation]]
- [[Modified Hyperbolic (Robertson)]]

## References
- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- [[SPE Papers]],  see Fetkovich (1980), Robertson (1988)