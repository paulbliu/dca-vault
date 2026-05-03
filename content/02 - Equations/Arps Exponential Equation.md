

**Created:** 2026-04-29
**Tags:** #equation #dca #arps #exponential

## Formula

### Rate vs. Time
$$
q(t) = q_i \cdot e^{-D \cdot t}
$$

### Cumulative Production
$$
N_p(t) = \frac{q_i - q(t)}{D}
$$

Equivalent form (direct integration of rate):
$$
N_p(t) = \frac{q_i}{D} \left(1 - e^{-D t}\right)
$$

### Instantaneous Decline Rate (Constant!)
$$
D(t) = D = \text{constant}
$$

This is the **defining feature** of exponential decline — the decline rate doesn't change over time.

### Loss Ratio (Constant!)
$$
\frac{1}{D(t)} = \frac{1}{D}
$$

A horizontal line on a plot of $1/D$ vs. $t$ — the diagnostic signature.

## Variables

| Symbol | Meaning | Typical Units |
|--------|---------|---------------|
| $q(t)$ | Production rate at time $t$ | STB/day or MSCF/day |
| $q_i$ | Initial production rate (at $t = 0$) | STB/day or MSCF/day |
| $D$ | Nominal decline rate (constant) | 1/day, 1/month, or 1/year |
| $t$ | Time since start of decline | days, months, or years |
| $N_p(t)$ | Cumulative production at time $t$ | STB or MSCF |

## Nominal vs. Effective Decline

For exponential decline, the relationship between nominal and effective decline is **clean and exact**:

$$
D_{\text{eff}} = 1 - e^{-D}
$$

$$
D_{\text{nom}} = -\ln(1 - D_{\text{eff}})
$$

### Quick Conversion Table

| $D$ (nominal, /year) | $D_{\text{eff}}$ (effective, %/year) |
|---|---|
| 0.05 | 4.88% |
| 0.10 | 9.52% |
| 0.20 | 18.13% |
| 0.30 | 25.92% |
| 0.50 | 39.35% |
| 0.70 | 50.34% |
| 1.00 | 63.21% |
| 2.00 | 86.47% |

> [!info] Why the Distinction Matters
> - **Reports and reserves filings** usually quote $D_{\text{eff}}$ (effective, %/year)
> - **Equations and integrations** use $D$ (nominal, continuously compounded)
> - Confusing the two is a common source of error — always check which one you're working with

## Derivation

### Starting Point: Constant Decline Rate
The defining assumption of exponential decline is that the **fractional decline rate is constant**:

$$
-\frac{1}{q} \frac{dq}{dt} = D = \text{constant}
$$

### Separating Variables
$$
-\frac{dq}{q} = D \, dt
$$

### Integrating
$$
-\ln\left(\frac{q}{q_i}\right) = D \cdot t
$$

### Solving for q(t)
$$
\boxed{q(t) = q_i \cdot e^{-D t}}
$$

### Cumulative Production
Integrating the rate equation:
$$
N_p(t) = \int_0^t q_i e^{-D \tau} \, d\tau = \frac{q_i}{D} (1 - e^{-Dt}) = \frac{q_i - q(t)}{D}
$$

## Relationship to Arps Hyperbolic

Exponential decline is the **limiting case** of [[Arps Hyperbolic Equation]] as $b \to 0$.

Using L'Hôpital's rule:
$$
\lim_{b \to 0} \frac{q_i}{(1 + b D_i t)^{1/b}} = q_i \cdot e^{-D_i t}
$$

**Proof sketch:**
Let $f(b) = \frac{1}{b} \ln(1 + b D_i t)$. Applying L'Hôpital as $b \to 0$:
$$
\lim_{b \to 0} f(b) = \lim_{b \to 0} \frac{D_i t}{1 + b D_i t} = D_i t
$$

So $\lim_{b \to 0} (1 + b D_i t)^{1/b} = e^{D_i t}$, and the hyperbolic rate equation reduces to the exponential form.

## EUR Calculation

Given an economic limit rate $q_{\text{ab}}$:

$$
EUR = N_p(t_{\text{now}}) + \frac{q(t_{\text{now}}) - q_{\text{ab}}}{D}
$$

Or, starting from $q_i$:
$$
EUR = \frac{q_i - q_{\text{ab}}}{D}
$$

> [!check] Always Bounded
> Unlike hyperbolic with $b \geq 1$, exponential decline **always produces a finite EUR** — no terminal decline constraint needed. This makes it the default "conservative" choice for reserves estimation.

### Time to Reach Economic Limit
$$
t_{\text{ab}} = \frac{1}{D} \ln\left(\frac{q_i}{q_{\text{ab}}}\right)
$$

## Diagnostic Plots

| Plot | Signature of Exponential |
|------|-------------------------|
| log($q$) vs. $t$ | **Straight line, slope = -D/ln(10)** ? defining signature |
| $q$ vs. $t$ | Concave-up decay curve |
| $1/D$ vs. $t$ | Horizontal line (constant) |
| $N_p$ vs. $q$ | **Straight line**, slope $= -1/D$ |
| log($q$) vs. log($t$) | Curved, asymptotes to exponential tail |

The semi-log plot of rate vs. time is the most powerful diagnostic — straight line = exponential.

## Unit Consistency

The equation is unit-agnostic as long as $D$ and $t$ are consistent:

| If $D$ is... | Then $t$ must be in... |
|---------------|------------------------|
| 1/day | days |
| 1/month | months |
| 1/year | years |

### Conversion Between Time Units
- $D_{\text{month}} = D_{\text{year}} / 12$
- $D_{\text{day}} = D_{\text{year}} / 365$
- $D_{\text{year}} = D_{\text{month}} \times 12$

## When to Use Exponential

> [!tip] Best Candidates
> - **Single-phase liquid flow** above bubble-point (undersaturated oil)
> - **Late-life conventional wells** that have fully stabilized
> - **Terminal decline portion** of a [[Modified Hyperbolic (Robertson)]] model
> - **Conservative reserves estimation** (P90, Proved)
> - **Quick forecasts** when minimal data is available

> [!warning] Avoid When
> - Well still in transient flow (see [[Transient vs Boundary-Dominated Flow]])
> - Gas wells with pressure support
> - Solution-gas-drive wells still producing below bubble point
> - Early-life unconventional wells (underestimates EUR significantly)

## Typical Decline Rates by Well Type

| Well Type | Effective Decline ($D_{\text{eff}}$) | Nominal ($D$, /year) |
|---|---|---|
| Late-life conventional oil | 3–7% /year | 0.03 – 0.07 |
| Mature gas well | 5–10% /year | 0.05 – 0.11 |
| Waterflood oil well | 4–8% /year | 0.04 – 0.08 |
| CO2 flood (Oxy specialty!) | 2–6% /year | 0.02 – 0.06 |
| Terminal decline on shale | 6–10% /year | 0.06 – 0.11 |

## Used In

- [[Arps Equations]]
- [[Exponential Decline]]
- [[Modified Hyperbolic (Robertson)]] (terminal portion)
- [[EUR Estimation]]

## Notes

- Exponential decline yields the **most conservative EUR** among the Arps forms
- Always produces a **finite EUR** ? safe default
- The **straight-line semi-log plot** is the easiest DCA diagnostic to spot by eye
- Widely used for SEC **Proved reserves** where conservatism is required
- **Not appropriate** for wells still in transient flow — will mis-fit and give wrong answers

## Worked Example

Suppose a mature conventional oil well:
- $q_i$ = 100 BOPD
- $D_{\text{eff}}$ = 8% /year ? $D$ = $-\ln(0.92)$ ˜ 0.0834 /year
- $q_{\text{ab}}$ = 5 BOPD

### Rate at t = 5 years
$$
q(5) = 100 \cdot e^{-0.0834 \times 5} \approx 100 \times 0.659 \approx 65.9 \text{ BOPD}
$$

### Time to reach economic limit
$$
t_{\text{ab}} = \frac{\ln(100/5)}{0.0834} \approx \frac{3.00}{0.0834} \approx 35.9 \text{ years}
$$

### EUR (from now to abandonment)
$$
EUR = \frac{100 - 5}{0.0834} \approx 1139 \text{ BOPD-years}
$$

Converting: 1139 BOPD-years × 365 days/year ˜ **415,700 BBL** ˜ **0.42 MMBO**

## References

- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- Arps, J.J. (1956). "Estimation of Primary Oil Reserves". *Trans. AIME*, 207, 182-191.
- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *JPT*, 32(6), 1065-1077.