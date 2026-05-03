
**Created:** 2026-04-29
**Tags:** #concept #dca #unconventional #duong #linear-flow

## Definition
The **Duong Method** (Anh N. Duong, 2010) is a decline curve analysis technique specifically designed for **unconventional wells dominated by long-duration linear flow** — the typical flow regime in hydraulically fractured shale and tight reservoirs.

Unlike [[Arps Equations]], which assume boundary-dominated flow, Duong was built from the ground up to honor the **transient linear flow physics** of fracture-dominated production. It produces **bounded EUR** by construction, avoiding the b > 1 problem entirely (see [[b-factor interpretation]]).

> [!info] The Core Insight
> Duong noticed that for many shale wells, a log-log plot of **rate/cumulative (q/N_p)** vs. **time** produces a remarkably **straight line**. This observation led to a physically-motivated model derived from linear flow theory.

## The Duong Equations

### Rate-Cumulative Ratio (The Foundation)
The defining relationship:
$$
\frac{q(t)}{N_p(t)} = a \cdot t^{-m}
$$

This is the diagnostic that motivated the method — a log-log plot of $q/N_p$ vs $t$ is a straight line with:
- **Slope** = $-m$
- **Intercept** = $a$

### Time Function
$$
t_D(t) = \frac{t^{1-m}}{1-m} - \frac{1}{1-m}
$$
(defined so $t_D \to 0$ as $t \to 1$, providing convenient reference)

### Rate Forecast
$$
q(t) = q_1 \cdot t^{-m} \cdot e^{\frac{a}{1-m}(t^{1-m} - 1)}
$$

### Cumulative Production
$$
N_p(t) = \frac{q_1}{a} \cdot t^{-m} \cdot e^{\frac{a}{1-m}(t^{1-m} - 1)} \cdot a = \frac{q(t)}{a \cdot t^{-m}}
$$

More simply, from the defining ratio:
$$
N_p(t) = \frac{q(t) \cdot t^{m}}{a}
$$

### EUR at Infinite Time
A signature feature: **EUR is bounded and analytically tractable**:
$$
EUR = q_\infty \cdot \left[\text{finite expression involving } a, m, q_1\right]
$$

Specifically, as $t \to \infty$, the model yields a finite cumulative production when $m > 1$ — making it naturally suited for wells in pure linear flow without ad-hoc terminal constraints.

## Parameters

| Parameter | Symbol | Typical Range | Meaning |
|---|---|---|---|
| Intercept constant | $a$ | 0.5 – 3.0 | Controls the magnitude of rate/cumulative ratio |
| Time exponent | $m$ | 1.0 – 1.5 | Slope of q/Np vs t on log-log |
| Reference rate | $q_1$ | Variable | Rate at t = 1 unit (e.g., 1 month) |
| Reference rate at infinite time | $q_\infty$ | Usually 0 or small | For a finite-boundary version |

### Interpreting **m**
- **m = 1.0** ---> pure linear flow (idealized infinite-conductivity fractures)
- **1.0 < m < 1.5** ---> linear flow with some interference or boundary effects
- **m > 1.5** ---> approaching boundary-dominated regime; Arps-type methods may apply
- **m < 1.0** ---> unusual; may indicate data issues or non-linear flow regime

## Why Duong Works for Shale

### Physical Basis
For a well producing from **linear flow** into a finite-conductivity fracture network:

$$
q(t) \propto t^{-1/2} \quad \text{(infinite-acting linear flow)}
$$

Integrating gives $N_p \propto t^{1/2}$, so:
$$
\frac{q}{N_p} \propto \frac{t^{-1/2}}{t^{1/2}} = t^{-1}
$$

This matches Duong's form with $m = 1$. Real wells deviate slightly from $m = 1$ due to finite conductivity, fracture closure, interference, and eventual boundary effects — captured in the model as $m$ slightly > 1.

### Advantage over Arps
- **Arps** fits rate-vs-time curves — struggles when wells are in transient flow
- **Duong** fits rate/cumulative-vs-time — naturally handles linear flow physics
- No need for an ad-hoc $D_{\min}$ like [[Modified Hyperbolic (Robertson)]]
- EUR converges to a finite value **by construction**

## Workflow

### Step 1: Diagnostic Plot
Plot $\log(q/N_p)$ vs. $\log(t)$:
- **Straight line** ---> Duong is applicable
- **Curved** ---> data may span multiple regimes; consider other methods

### Step 2: Parameter Estimation
From the straight-line fit:
- **Slope = -m**
- **Intercept = log(a)** (at t = 1)

### Step 3: Rate Reference
Pick $q_1$ = rate at reference time (commonly t = 1 month or t = 1 day, depending on units).

### Step 4: Forecast
Apply the Duong rate equation forward in time.

### Step 5: EUR
Integrate or use the closed-form expression to obtain EUR with an economic cutoff $q_{\text{ab}}$.

### Step 6: Validate
- Compare to [[Modified Hyperbolic (Robertson)]] EUR
- Compare to analog wells
- Cross-check against RTA if available

## Assumptions / Limitations

> [!check] Required Conditions
> - Well is in **linear flow regime** (typical for fractured shale wells in early-to-mid life)
> - Production history long enough to establish the $q/N_p$ vs $t$ trend
> - No major completion changes or workovers mid-fit

> [!warning] Limitations
> - **Assumes linear flow persists** — for wells reaching true BDF, method may underestimate late-life decline
> - **Diagnostic plot must be linear** — if not, the model is inappropriate
> - Less familiar to some engineers than Arps — **requires communication** to stakeholders
> - Parameter sensitivity: small changes in $m$ can meaningfully change EUR
> - No explicit handling of **multi-phase flow effects** (e.g., gas breakthrough)

## Comparison to Other Methods

| Feature                | [[Arps Equations]] | [[Modified Hyperbolic (Robertson)]] | **Duong**             | [[Stretched Exponential (SEPD)]] |
| ---------------------- | ------------------ | ----------------------------------- | --------------------- | -------------------------------- |
| Handles transient flow | No                 | Partial                             | Yes                   | Yes                              |
| Bounded EUR            | Only b < 1         | Yes                                 | Yes                   | Yes                              |
| Physical basis         | Empirical          | Empirical + constraint              | Linear flow           | Empirical decay                  |
| Requires $D_{\min}$?   | N/A                | Yes                                 | **No**                | No                               |
| Ease of use            | High               | High                                | Medium                | Medium                           |
| Best for               | Conventional BDF   | Unconventional default              | **Linear-flow shale** | Extended transient               |

## When to Use Duong

> [!tip] Best Candidates
> - **Hydraulically fractured shale wells** (Permian, Eagle Ford, Bakken, Marcellus)
> - Wells with **extended linear flow** (months to years)
> - Wells where the **q/N_p vs t log-log plot is linear**
> - Cases where [[Modified Hyperbolic (Robertson)]] gives EURs that seem unjustifiably high/low
> - Benchmarking against Arps-based methods for QA/QC

> [!danger] Avoid When
> - Production history is very short (< 6 months) — not enough data for reliable fit
> - Well has reached clear boundary-dominated flow
> - Major completion/operational changes within the data window
> - Diagnostic plot is clearly non-linear

## Practical Example (Illustrative)

Suppose a Permian horizontal oil well with 18 months of history:

**Diagnostic fit of log(q/N_p) vs log(t) yields:**
- $m = 1.15$
- $a = 1.80$
- $q_1$ ˜ 1200 BOPD at t = 1 month

**Forecast using Duong:**
- 5-year cumulative ˜ 500 MBO
- 10-year cumulative ˜ 650 MBO
- 20-year cumulative ˜ 750 MBO
- EUR with $q_{\text{ab}}$ = 10 BOPD ˜ 780 MBO

**Compare to Modified Hyperbolic on same well:**
- $D_{\min}$ = 8% ? EUR ˜ 820 MBO
- $D_{\min}$ = 6% ? EUR ˜ 900 MBO

> Duong sits naturally between the Modified Hyperbolic cases, without requiring a $D_{\min}$ assumption. Use both and report the range.

## Industry Adoption
- **Shale operators** increasingly use Duong alongside Modified Hyperbolic
- **ComboCurve** and most modern DCA platforms support Duong natively
- **SEC reserves** — gaining acceptance as a defensible method for unconventional wells with proper documentation
- **Oxy** — check with Reserves and Surveillance teams for internal guidance on acceptance

## Diagnostic Plots to Include in Reports

1. **q vs t (semi-log)** — shows overall decline
2. **q/N_p vs t (log-log)** — the defining Duong plot (should be linear)
3. **Cumulative vs time** — visualizes EUR trajectory
4. **Duong forecast overlay on history** — shows match quality
5. **Sensitivity plot** — EUR vs $m$ and $a$

## Extensions & Related Methods

- **Duong with terminal decline** — some practitioners add a $D_{\min}$ constraint for extra conservatism
- **Combined Duong + Arps** — use Duong during linear flow, switch to Arps exponential when BDF reached
- See also: [[Power Law Exponential]], [[Stretched Exponential (SEPD)]]

## Related
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]
- [[Transient vs Boundary-Dominated Flow]]
- [[b-factor interpretation]]
- [[EUR Estimation]]

## References
- Duong, A.N. (2010). "An Unconventional Rate Decline Approach for Tight and Fracture-Dominated Gas Wells". SPE-137748 (CSUG/SPE).
- Duong, A.N. (2011). "Rate-Decline Analysis for Fracture-Dominated Shale Reservoirs". *SPE Reservoir Evaluation & Engineering*, 14(3), 377-387.
- Joshi, K. & Lee, W.J. (2013). "Comparison of Various Deterministic Forecasting Techniques in Shale Gas Reservoirs". SPE-163870.
- Kanfar, M.S. & Wattenbarger, R.A. (2012). "Comparison of Empirical Decline Curve Methods for Shale Wells". SPE-162648.