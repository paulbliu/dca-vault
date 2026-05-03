

**Created:** 2026-04-29
**Tags:** #equation #dca #arps #hyperbolic

## Formula

### Rate vs. Time
$$
q(t) = \frac{q_i}{(1 + b \cdot D_i \cdot t)^{1/b}}
$$

### Cumulative Production
For $b \neq 1$:
$$
N_p(t) = \frac{q_i^{\,b}}{D_i (1-b)} \left[q_i^{\,1-b} - q(t)^{1-b}\right]
$$

Equivalent form:
$$
N_p(t) = \frac{q_i - q(t) \cdot (1 + b D_i t)}{D_i (1-b)} \quad \text{(for } b \neq 1\text{)}
$$

### Instantaneous Decline Rate
$$
D(t) = \frac{D_i}{1 + b \cdot D_i \cdot t}
$$

### Loss Ratio (Linear in t)
$$
\frac{1}{D(t)} = \frac{1}{D_i} + b \cdot t
$$

This linear form is the **diagnostic signature** of Arps hyperbolic behavior — a straight line on a plot of $1/D$ vs. $t$ with slope $b$ and intercept $1/D_i$.

## Variables

| Symbol   | Meaning                                                             | Typical Units             |
| -------- | ------------------------------------------------------------------- | ------------------------- |
| $q(t)$   | Production rate at time $t$                                         | STB/day or MSCF/day       |
| $q_i$    | Initial production rate (at $t = 0$)                                | STB/day or MSCF/day       |
| $D_i$    | Initial nominal decline rate                                        | 1/day, 1/month, or 1/year |
| $b$      | Hyperbolic decline exponent (dimensionless, $0 < b < 1$ physically) | —                         |
| $t$      | Time since start of decline                                         | days, months, or years    |
| $D(t)$   | Instantaneous nominal decline rate at time $t$                      | 1/time                    |
| $N_p(t)$ | Cumulative production at time $t$                                   | STB or MSCF               |

> [!info] Nominal vs. Effective Decline
> - **Nominal decline ($D$):** continuously compounded rate, used in equations
> - **Effective annual decline ($D_{eff}$):** reported percentage, calculated as:
> $$D_{eff} = 1 - \left(\frac{q(t+1\text{yr})}{q(t)}\right)$$
> - For hyperbolic, the relationship between $D_i$ (nominal) and $D_{i,eff}$ depends on $b$ and the time window

## Derivation

### Starting Point: Loss Ratio Definition
Arps defined the **loss ratio** as:
$$
\frac{1}{D(t)} = \frac{-q(t)}{dq/dt}
$$

### Empirical Observation
For many wells, the loss ratio is **linear in time**:
$$
\frac{1}{D(t)} = \frac{1}{D_i} + b \cdot t
$$

where $b$ is the slope.

### Rearranging for D(t)
$$
D(t) = \frac{D_i}{1 + b D_i t}
$$

### Integrating for q(t)
Using $D(t) = -\frac{1}{q}\frac{dq}{dt}$:

$$
-\frac{dq}{q} = \frac{D_i}{1 + b D_i t} \, dt
$$

Integrating both sides:
$$
-\ln\left(\frac{q}{q_i}\right) = \frac{1}{b} \ln(1 + b D_i t)
$$

Solving for $q(t)$:
$$
\boxed{q(t) = \frac{q_i}{(1 + b D_i t)^{1/b}}}
$$

### Theoretical Backing
While Arps' derivation was empirical, **Fetkovich (1980)** later showed that this form arises naturally from:
- Reservoir flow equations under **pseudo-steady-state**
- Solution-gas-drive physics with certain PVT assumptions
- Type-curve matching of production data

See [[Transient vs Boundary-Dominated Flow]] for when this derivation applies.

## Special Cases

### b ? 0 (Exponential Limit)
Applying L'Hôpital's rule:
$$
\lim_{b \to 0} \frac{q_i}{(1 + b D_i t)^{1/b}} = q_i \cdot e^{-D_i t}
$$

This yields the [[Arps Exponential Equation]].

### b = 1 (Harmonic Form)
Direct substitution:
$$
q(t) = \frac{q_i}{1 + D_i t}
$$

This is the [[Arps Harmonic Equation]].

### General b with Cumulative Production
For $b = 1$, the cumulative integral takes a logarithmic form (see [[Arps Harmonic Equation]]).
For $b \neq 1$, use the closed-form expression above.

## EUR Calculation

Given an economic limit rate $q_{\text{ab}}$:

$$
EUR = N_p(t_{\text{now}}) + \frac{q_i^{\,b}}{D_i (1-b)} \left[q(t_{\text{now}})^{1-b} - q_{\text{ab}}^{\,1-b}\right]
$$

> [!warning] b = 1 and EUR Divergence
> For $b \geq 1$, integrating to infinity yields **infinite EUR**. An economic cutoff ($q_{\text{ab}} > 0$) or terminal decline constraint (see [[Modified Hyperbolic (Robertson)]]) must be applied. See [[b-factor interpretation]] for the physical interpretation.

## Unit Consistency Cheat Sheet

The equation is **unit-agnostic** as long as $D_i$ and $t$ are consistent:

| If $D_i$ is... | Then $t$ must be in... |
| -------------- | ---------------------- |
| 1/day          | days                   |
| 1/month        | months                 |
| 1/year         | years                  |

Rate units ($q_i$, $q$) carry through unchanged.

## Used In

- [[Arps Equations]]
- [[Hyperbolic Decline]]
- [[Modified Hyperbolic (Robertson)]]
- [[EUR Estimation]]
- [[b-factor interpretation]]

## Diagnostic Plots

| Plot                  | Signature of Hyperbolic                       |
| --------------------- | --------------------------------------------- |
| log($q$) vs. $t$      | Concave curve (not straight)                  |
| $q$ vs. log($t$)      | S-shaped                                      |
| $1/D$ vs. $t$         | **Straight line, slope = b**                  |
| log($q$) vs. log($t$) | Curved, approaching slope $-1/b$ at late time |

## Typical b-values

| Reservoir / Drive          | Typical b                                |
| -------------------------- | ---------------------------------------- |
| Single-phase liquid        | 0.0                                      |
| Solution gas drive         | 0.2 – 0.4                                |
| Gas well, volumetric       | 0.4 – 0.5                                |
| Gas well with aquifer      | 0.5 – 0.8                                |
| Layered reservoirs         | 0.5 – 1.0                                |
| Unconventional (transient) | 1.0 – 2.0 (non-physical if extrapolated) |

See [[b-factor interpretation]] for detailed discussion.

## Notes

- The equation assumes a **single, continuous flow regime** — workovers, artificial lift changes, or completion modifications break the fit
- **Fitting window matters:** only data from **boundary-dominated flow** should be used for conventional wells
- For unconventional wells, use in combination with [[Modified Hyperbolic (Robertson)]] or [[Duong Method]] rather than pure hyperbolic extrapolation
- Software implementations often use **effective decline** ($D_{i,eff}$) as input — convert to nominal internally

## References

- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *JPT*, 32(6), 1065-1077.
- Fetkovich, M.J., Vienot, M.E., Bradley, M.D., & Kiesow, U.G. (1987). "Decline Curve Analysis Using Type Curves — Case Histories". *SPE Formation Evaluation*, 2(4), 637-656.
