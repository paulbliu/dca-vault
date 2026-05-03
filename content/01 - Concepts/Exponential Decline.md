
**Created:** 2026-04-29
**Tags:** #concept #dca #arps

## Definition
**Exponential decline** is the simplest of the [[Arps Equations]], characterized by a **constant nominal decline rate** over time. It's the special case where the hyperbolic exponent **b = 0**.

## Key Equation
$$
q(t) = q_i \cdot e^{-D \cdot t}
$$
See: [[Arps Exponential Equation]]

## Characteristics
- **Straight line** on a **semi-log plot** (log of rate vs. time)
- Constant **fractional decline** per unit time
- **Most conservative** of the Arps curves ? lowest EUR prediction
- Decline rate `D` is constant (does not decrease over time)

## Assumptions / Limitations

> [!check] Required Conditions
> - Boundary-dominated flow
> - Constant bottomhole pressure
> - Single-phase liquid flow OR very high drawdown

> [!warning] Limitations
> - Underestimates reserves for reservoirs with pressure support (water drive, gas cap)
> - Inappropriate for unconventional wells in early transient flow

## When to Use
- **Conservative EUR estimates** — good for reserves bookings
- **Late-life wells** where hyperbolic has transitioned to exponential
- **Single-phase liquid** reservoirs above bubble point
- **Terminal decline** in a [[Modified Hyperbolic (Robertson)]] model

## Effective vs. Nominal Decline
$$
D_{eff} = 1 - e^{-D}
$$
- **Nominal (D):** continuously compounded rate (used in equations)
- **Effective ($D_{eff}$):** annual percentage decline (used in reporting)
- Example: D = 0.10/year ? $D_{eff}$ ˜ 9.5%/year

## Related
- [[Arps Equations]]
- [[Hyperbolic Decline]]
- [[Harmonic Decline]]
- [[b-factor interpretation]]
- [[Arps Exponential Equation]]

## References
- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.