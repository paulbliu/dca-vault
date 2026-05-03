

**Created:** 2026-04-29
**Tags:** #equation #dca #arps #harmonic

## Formula

### Rate vs. Time
$$
q(t) = \frac{q_i}{1 + D_i \cdot t}
$$

### Cumulative Production
$$
N_p(t) = \frac{q_i}{D_i} \ln\left(\frac{q_i}{q(t)}\right) = \frac{q_i}{D_i} \ln(1 + D_i t)
$$

### Instantaneous Decline Rate
$$
D(t) = \frac{D_i}{1 + D_i \cdot t}
$$

The decline rate **decreases linearly-in-reciprocal** with time — the slowest of the Arps forms.

### Loss Ratio (Linear with Slope = 1)
$$
\frac{1}{D(t)} = \frac{1}{D_i} + t
$$

A straight line on $1/D$ vs. $t$ with **slope exactly 1** — the diagnostic signature that distinguishes harmonic from general hyperbolic (which has slope = $b$).

## Variables

| Symbol | Meaning | Typical Units |
|--------|---------|---------------|
| $q(t)$ | Production rate at time $t$ | STB/day or MSCF/day |
| $q_i$ | Initial production rate (at $t = 0$) | STB/day or MSCF/day |
| $D_i$ | Initial nominal decline rate | 1/day, 1/month, or 1/year |
| $t$ | Time since start of decline | days, months, or years |
| $D(t)$ | Instantaneous nominal decline rate | 1/time |
| $N_p(t)$ | Cumulative production at time $t$ | STB or MSCF |

## Relationship to Arps Hyperbolic

Harmonic decline is the special case of [[Arps Hyperbolic Equation]] where **b = 1**.

Direct substitution into the hyperbolic rate equation:
$$
q(t) = \frac{q_i}{(1 + 1 \cdot D_i \cdot t)^{1/1}} = \frac{q_i}{1 + D_i t}
$$

However, the hyperbolic **cumulative** equation has a singularity at $b = 1$ (the $\frac{1}{1-b}$ term blows up). This is why harmonic requires its own **logarithmic** cumulative formula.

## Derivation

### Starting Point: Linear Loss Ratio with Slope 1
The defining feature of harmonic decline:
$$
\frac{1}{D(t)} = \frac{1}{D_i} + t
$$

### Solving for D(t)
$$
D(t) = \frac{D_i}{1 + D_i t}
$$

### Integrating for q(t)
Using $D(t) = -\frac{1}{q}\frac{dq}{dt}$:

$$
-\frac{dq}{q} = \frac{D_i}{1 + D_i t} \, dt
$$

Integrating:
$$
-\ln\left(\frac{q}{q_i}\right) = \ln(1 + D_i t)
$$

Exponentiating:
$$
\boxed{q(t) = \frac{q_i}{1 + D_i t}}
$$

### Deriving Cumulative Production
Integrating the rate equation:
$$
N_p(t) = \int_0^t \frac{q_i}{1 + D_i \tau} \, d\tau = \frac{q_i}{D_i} \ln(1 + D_i t)
$$

Since $1 + D_i t = q_i / q(t)$, we can rewrite in terms of current rate:
$$
N_p(t) = \frac{q_i}{D_i} \ln\left(\frac{q_i}{q(t)}\right)
$$

## EUR Calculation

Given an economic limit rate $q_{\text{ab}}$:

$$
EUR = \frac{q_i}{D_i} \ln\left(\frac{q_i}{q_{\text{ab}}}\right)
$$

From any reference point (current time $t_{\text{now}}$, current rate $q_{\text{now}}$):
$$
EUR = N_p(t_{\text{now}}) + \frac{q_{\text{now}}}{D_{\text{now}}} \ln\left(\frac{q_{\text{now}}}{q_{\text{ab}}}\right)
$$

> [!warning] EUR Diverges Without Economic Limit
> As $t \to \infty$, $q(t) \to 0$ only as $1/t$ — **very slowly**. Cumulative production grows as $\ln(t)$:
> $$N_p(\infty) = \frac{q_i}{D_i} \ln(1 + D_i \cdot \infty) \to \infty$$
> An economic cutoff ($q_{\text{ab}} > 0$) is **mandatory** for finite EUR. See [[b-factor interpretation]] for why b = 1 sits on the boundary of physical realism.

### Time to Reach Economic Limit
Setting $q(t) = q_{\text{ab}}$:
$$
t_{\text{ab}} = \frac{1}{D_i}\left(\frac{q_i}{q_{\text{ab}}} - 1\right)
$$

Note: for low $q_{\text{ab}}$ relative to $q_i$, this time can be **very long** — a defining feature of harmonic behavior.

## Diagnostic Plots

| Plot | Signature of Harmonic |
|------|----------------------|
| $q$ vs. $t$ | Slowly-decaying curve, asymptotes to zero |
| log($q$) vs. $t$ | Curved (not straight — distinguishes from exponential) |
| $1/q$ vs. $t$ | **Straight line**, slope $= D_i / q_i$ ? easy diagnostic |
| $N_p$ vs. log($q$) | **Straight line**, slope $= -q_i / D_i$ ? definitive diagnostic |
| $1/D$ vs. $t$ | Straight line, **slope exactly 1** |
| log($q$) vs. log($t$) | Straight line at late time, slope $= -1$ |

The plots of $1/q$ vs. $t$ and $N_p$ vs. $\log(q)$ are the **most powerful** harmonic diagnostics.

## Unit Consistency

Same as other Arps forms — $D_i$ and $t$ must be in matching units.

## Nominal vs. Effective Decline

Unlike exponential (which has a clean $D_{\text{eff}} = 1 - e^{-D}$ relationship), harmonic's effective decline **changes over time** as the instantaneous $D(t)$ evolves:

$$
D_{\text{eff}}(t) = 1 - \frac{q(t + 1\text{yr})}{q(t)}
$$

This makes harmonic less convenient for reporting — the quoted "decline rate" must reference a specific time.

## When to Use Harmonic

> [!tip] Best Candidates
> - **Gravity drainage reservoirs** (thick, dipping, high-permeability formations)
> - **Strong water drive** reservoirs with aquifer support maintaining pressure
> - **Tank-type** reservoirs with unusual pressure maintenance
> - As an **upper bound** in P10 / P50 / P90 uncertainty analysis
> - Occasionally for **waterflood** production when displacement is efficient

> [!danger] Avoid When
> - **Unconventional wells** — will massively overestimate EUR
> - Wells with **clear pressure decline** (solution gas drive, volumetric gas)
> - Early-life wells still in transient flow
> - Any case where conservatism matters (Proved reserves, downside cases)

## Physical Interpretation

Harmonic decline physically means the reservoir is receiving **pressure support proportional to withdrawal** — the system isn't simply depleting, something is pushing back:

- **Aquifer influx** refills pore space as oil is produced
- **Gas cap expansion** provides pressure maintenance
- **Gravity drainage** replaces produced oil with oil from higher in the column
- **Connected adjacent reservoirs** charge the producing zone

When you see clean harmonic behavior in real data, it's telling you something **important about the drive mechanism** — don't just fit blindly, understand *why*.

## Comparison: The Three Arps Forms

For identical $q_i$ = 1000 BOPD, $D_i$ = 0.3 /year, $q_{\text{ab}}$ = 10 BOPD:

| Form | b | EUR (approx.) | Time to q_ab | Rate at 10 yr |
|------|---|---------------|--------------|---------------|
| [[Arps Exponential Equation]] | 0 | ~3,300 BBL-yr | 15.4 yr | 50 BOPD |
| [[Arps Hyperbolic Equation]] (b=0.5) | 0.5 | ~4,800 BBL-yr | 32 yr | 160 BOPD |
| **Harmonic** | **1** | **~15,300 BBL-yr** | **330 yr** | **250 BOPD** |

Harmonic's EUR is **dramatically higher** — and its abandonment time is **decades longer** — than the other forms. This is why model selection is so consequential (see [[EUR Estimation]]).

## Worked Example

A strong-water-drive conventional oil well:
- $q_i$ = 500 BOPD
- $D_i$ = 0.15 /year
- $q_{\text{ab}}$ = 20 BOPD

### Rate at t = 5 years
$$
q(5) = \frac{500}{1 + 0.15 \times 5} = \frac{500}{1.75} \approx 286 \text{ BOPD}
$$

### Cumulative at t = 5 years
$$
N_p(5) = \frac{500}{0.15} \ln(1.75) \approx 3333 \times 0.560 \approx 1866 \text{ BOPD-year}
$$

Converting: 1866 × 365 ˜ **681,000 BBL** (5-year cumulative)

### Time to reach economic limit (q_ab = 20)
$$
t_{\text{ab}} = \frac{1}{0.15}\left(\frac{500}{20} - 1\right) = \frac{24}{0.15} = 160 \text{ years}
$$

> Note the **absurdly long** abandonment time — a hallmark of harmonic. In practice, the well will be abandoned for operational reasons long before this.

### EUR
$$
EUR = \frac{500}{0.15} \ln\left(\frac{500}{20}\right) \approx 3333 \times 3.22 \approx 10,730 \text{ BOPD-year}
$$

Converting: 10,730 × 365 ˜ **3.92 MMBO**

> Compare this to an exponential fit of the same $q_i$ and initial $D$: EUR would be only ~1.17 MMBO. Harmonic gives **over 3× the EUR** — which is why justification is essential.

## Used In

- [[Arps Equations]]
- [[Harmonic Decline]]
- [[EUR Estimation]]

## Notes

- Harmonic is the **most optimistic** Arps form — use with significant justification
- **Rarely observed** in pure form; usually only partially matches real data
- Cumulative production grows as $\ln(t)$ — technically unbounded, always apply $q_{\text{ab}}$
- **Straight-line diagnostics** ($N_p$ vs log $q$, or $1/q$ vs $t$) are essential for validation
- At Oxy, harmonic fits should typically be **cross-checked with Reserves/Surveillance** before reserves bookings
- For [[Modified Hyperbolic (Robertson)]] applications, harmonic is the $b = 1$ case — but terminal decline constraints still prevent unbounded growth

## References

- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *JPT*, 32(6), 1065-1077.
- Poston, S.W. & Poe, B.D. (2008). *Analysis of Production Decline Curves*. SPE Textbook Series Vol. 12.