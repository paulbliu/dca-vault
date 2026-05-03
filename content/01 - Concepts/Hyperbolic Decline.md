
**Created:** 2026-04-29
**Tags:** #concept #dca #arps

## Definition
**Hyperbolic decline** is the general form of the [[Arps Equations]], where the decline rate **decreases over time**. It is characterized by a decline exponent **0 < b < 1** for conventional reservoirs (and often b > 1 for unconventional wells, though this is physically questionable long-term).

It is the most **commonly observed** decline behavior in real wells.

## Key Equation
$$
q(t) = \frac{q_i}{(1 + b \cdot D_i \cdot t)^{1/b}}
$$
See: [[Arps Hyperbolic Equation]]

## Characteristics
- **Curved line** on a semi-log plot (unlike exponential's straight line)
- **Decline rate decreases** with time: $D(t) = \frac{D_i}{1 + b \cdot D_i \cdot t}$
- **b-factor** controls the curvature:
  - Small b ? closer to exponential (steeper decline)
  - Large b ? closer to harmonic (flatter decline, higher EUR)
- **EUR lies between** exponential and harmonic

## Typical b-values

| Drive Mechanism | Typical b-range |
|----------------|-----------------|
| Single-phase liquid expansion | 0.0 – 0.1 |
| Solution gas drive (oil) | 0.2 – 0.4 |
| Gas well (volumetric) | 0.4 – 0.5 |
| Gas well (with water influx) | 0.5 – 0.9 |
| Layered / commingled reservoirs | 0.5 – 1.0 |
| Unconventional (early life, transient) | 1.0 – 2.0+ |

See: [[b-factor interpretation]]

## Assumptions / Limitations

> [!check] Required Conditions
> - Well is in **boundary-dominated flow**
> - Constant bottomhole pressure
> - Constant drainage area and reservoir properties

> [!warning] Limitations
> - **b > 1 is physically unrealistic** in the long term ? leads to infinite EUR if extrapolated forever
> - In unconventional wells, early-time data is usually **transient**, not BDF ? fitting Arps during this period gives inflated b-values
> - Solution: apply [[Modified Hyperbolic (Robertson)]] — switches to exponential once decline rate drops below a threshold

## When to Use
- **Default choice** for conventional wells once boundary-dominated flow is established
- Gas wells with or without aquifer support
- Solution gas drive oil reservoirs
- **Not recommended** for unconventional wells without a terminal decline constraint

## Special Cases
- When **b = 0** ? reduces to [[Exponential Decline]]
- When **b = 1** ? reduces to [[Harmonic Decline]]

## Related
- [[Arps Equations]]
- [[Exponential Decline]]
- [[Harmonic Decline]]
- [[b-factor interpretation]]
- [[Modified Hyperbolic (Robertson)]]
- [[Arps Hyperbolic Equation]]
- [[Transient vs Boundary-Dominated Flow]]

## References
- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *JPT*, 32(6), 1065-1077.
- Robertson, S. (1988). "Generalized Hyperbolic Equation". SPE-18731.