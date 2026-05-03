
**Created:** 2026-04-29
**Tags:** #concept #dca #type-curves #fetkovich #diagnostic

## Definition
The **Fetkovich Type Curves** (Michael J. Fetkovich, 1980) are a family of **dimensionless decline curves** that unify **transient radial flow** (from well-test theory) with **boundary-dominated flow** (classical [[Arps Equations]]) into a single diagnostic and forecasting framework.

They were the first method to rigorously tie classical DCA to **reservoir physics**, providing both:
1. **Diagnostic power** — identify flow regime and infer reservoir properties (k, h, s, re) from production data
2. **Forecasting power** — match production to a type curve and project forward using the matched Arps parameters

> [!info] Why This Was Revolutionary in 1980
> Before Fetkovich, [[Arps Equations]] were viewed as purely **empirical curve-fitting tools** with no physical grounding. Fetkovich showed that:
> - Arps hyperbolic decline **arises naturally** from reservoir flow equations during pseudo-steady-state
> - The **b-factor is related to drive mechanism** (see [[b-factor interpretation]])
> - **Transient flow** has a distinct signature that should be excluded from Arps fits
> - Early well-life production data contains **transient information** about reservoir properties
>
> This unified well-test analysis and production-decline analysis into a single physical framework.

## The Type Curve Structure

Fetkovich's type curves plot dimensionless rate $q_{Dd}$ vs. dimensionless time $t_{Dd}$ on log-log axes:

$$
q_{Dd}(t_{Dd}) \quad \text{vs.} \quad t_{Dd}
$$

### Two Regions on the Type Curve

#### Region 1: Transient Flow (early time)
Governed by **radial flow solutions** from well-test theory. Characterized by:
- Multiple curves parameterized by **dimensionless radius** $r_{eD} = r_e / r_w$
- Each $r_{eD}$ represents a different drainage-to-wellbore radius ratio
- Curves show **characteristic -1/2 slope** for infinite-acting radial flow

#### Region 2: Boundary-Dominated (Depletion) Flow (late time)
Governed by **Arps hyperbolic decline** with various b-values:
- Curves parameterized by **b = 0, 0.1, 0.2, ..., 1.0**
- All curves **merge** at the transition from transient to BDF
- Late-time behavior follows:
$$
q_{Dd} = \frac{1}{(1 + b \cdot t_{Dd})^{1/b}}
$$

### The Unifying Feature
The transient curves **merge smoothly** into the Arps depletion curves at the **end of transient flow**, so any real production data can be matched to the type curve to reveal:
- When transient flow ended
- The appropriate b-value for BDF
- The initial conditions ($q_i$, $D_i$) needed for forecasting

## Key Dimensionless Variables

### Dimensionless Rate
$$
q_{Dd} = \frac{q(t)}{q_i} = \frac{141.2 \, q \, \mu \, B}{k \, h \, (p_i - p_{wf})} \cdot \left[\ln(r_e/r_w) - \frac{1}{2}\right]
$$

### Dimensionless Time
$$
t_{Dd} = D_i \cdot t = \frac{0.00633 \, k \, t}{\phi \, \mu \, c_t \, r_w^2} \cdot \frac{1}{\frac{1}{2}\left[(r_e/r_w)^2 - 1\right] \left[\ln(r_e/r_w) - \frac{1}{2}\right]}
$$

### Dimensionless Cumulative
$$
Q_{Dd} = \frac{N_p \cdot D_i}{q_i}
$$

Where:
- $q$ = oil rate (STB/day)
- $\mu$ = viscosity (cp)
- $B$ = formation volume factor (RB/STB)
- $k$ = permeability (mD)
- $h$ = net pay thickness (ft)
- $p_i - p_{wf}$ = drawdown (psi)
- $\phi$ = porosity (fraction)
- $c_t$ = total compressibility (1/psi)
- $r_w, r_e$ = wellbore and drainage radius (ft)

> [!tip] Practical Interpretation
> The dimensionless groups are designed so that **any well's data**, when normalized by $q_i$ and $D_i$, falls on a universal set of curves. Matching data to a curve gives you both the **b-factor** (from the BDF region) and the **reservoir properties** (from the transient region).

## The Type Curve Matching Procedure

### Step 1: Plot Log-Log Data
Plot field rate $q$ vs. time $t$ on **log-log paper** (or digitally).

### Step 2: Overlay on Type Curve
Slide the data plot over the Fetkovich type curves (digitally: fit using software) to find the best match:
- **Horizontal shift** establishes match in time
- **Vertical shift** establishes match in rate
- The matched curve reveals **b** (for BDF) and $r_{eD}$ (for transient)

### Step 3: Read Match Points
Pick any point on the data (e.g., $q = 100$ BOPD at $t = 500$ days) and note its corresponding point on the type curve ($q_{Dd} = 0.4$ at $t_{Dd} = 0.8$, for example).

### Step 4: Calculate Parameters
From match points:
$$
q_i = \frac{q_{\text{match}}}{q_{Dd,\text{match}}}
$$
$$
D_i = \frac{t_{Dd,\text{match}}}{t_{\text{match}}}
$$

### Step 5: Calculate Reservoir Properties (from transient region)
Using the dimensionless definitions and the matched $r_{eD}$:
- **Permeability** $k$ — from $q_i$ and the radial flow equation
- **Drainage area** — from $r_e$ and $r_{eD}$
- **Skin** — from the transient match quality

### Step 6: Forecast
Use the matched Arps parameters ($q_i$, $D_i$, b) to project rate forward with [[Arps Hyperbolic Equation]] or the appropriate form.

### Step 7: EUR
$$
EUR = \frac{q_i}{D_i (1-b)} \left[1 - \left(\frac{q_{\text{ab}}}{q_i}\right)^{1-b}\right] \quad (b \neq 1)
$$

## Why Fetkovich Type Curves Still Matter

### 1. Physical Grounding for Arps
Before Fetkovich, b-values were viewed as "just curve-fit parameters." Fetkovich showed they correspond to specific **drive mechanisms and reservoir behaviors**, giving b-values real physical meaning. See [[b-factor interpretation]].

### 2. Flow Regime Diagnosis
The type curve makes it **visually obvious** whether a well is in transient or boundary-dominated flow — critical before applying Arps. See [[Transient vs Boundary-Dominated Flow]].

### 3. Reservoir Characterization from DCA
Unlike pure [[Arps Equations]], Fetkovich yields **reservoir properties** (k, h, s, re) — useful for development planning, well spacing, and reserves validation.

### 4. Foundation for Modern Methods
Fetkovich's unified transient + BDF framework directly inspired:
- **Blasingame type curves** (normalized rate with material balance time)
- **Agarwal-Gardner type curves** (normalized rate with re-scaled time)
- **Rate Transient Analysis (RTA)** as a discipline

## Assumptions / Limitations

> [!check] Required Conditions
> - **Single-phase** flow (originally developed for oil; later extended to gas)
> - **Constant bottomhole pressure** (or slowly varying)
> - **Vertical well** in a roughly **circular drainage area** (or equivalent)
> - **Homogeneous, isotropic reservoir** (for transient match to yield reliable k)
> - **Radial flow geometry** (not suited for hydraulically fractured horizontal wells)

> [!warning] Limitations
> - **Not designed for hydraulically fractured wells** — linear or bilinear flow regimes don't match the radial-flow transient curves
> - **Single-layer assumption** — layered reservoirs produce complex responses
> - **Constant BHP assumption** breaks down for wells with changing artificial lift
> - **Less useful for unconventional wells** (shale, tight oil) — use [[Duong Method]], [[Modified Hyperbolic (Robertson)]], [[Stretched Exponential (SEPD)]], or [[Power Law Exponential]] instead
> - **Match is non-unique** at times — especially with noisy data or short histories

## Conventional vs. Unconventional Application

### Conventional Wells: Excellent Fit
Fetkovich type curves are **still the gold standard** for:
- **Vertical conventional oil wells** (solution gas drive, water drive)
- **Gas wells** with modifications (Fetkovich-Vienot extension, 1987)
- **Mature waterflood** wells in homogeneous reservoirs
- **CO2 flood wells** (Oxy specialty!) with some adjustments

### Unconventional Wells: Limited Direct Use
Modern fractured horizontal wells have very different flow signatures:
- **Linear flow** dominates for years (not radial)
- **Complex fracture networks** break the circular drainage assumption
- Fetkovich's original transient region doesn't match

**But the philosophy still applies** — modern unconventional type curves (e.g., **Wattenbarger linear flow type curves**) extend Fetkovich's approach to different flow geometries.

## Extensions & Successors

| Method | Year | Extension |
|---|---|---|
| **Fetkovich-Vienot** | 1987 | Added gas-well adjustments (real-gas pseudo-pressure) |
| **Carter** | 1985 | Gas-specific type curves with modified time |
| **Blasingame** | 1991 | Normalized rate vs. material balance time (handles variable BHP) |
| **Agarwal-Gardner** | 1999 | Re-scaled time for convenience in software |
| **Wattenbarger** | 1998 | Linear flow type curves for unconventional wells |
| **NPI (Normalized Pressure Integral)** | 1990s | Alternative normalization for rate transient analysis |

These all trace their lineage to Fetkovich's original insight that **transient + depletion** can be unified.

## Diagnostic Plots

| Plot | Use |
|------|-----|
| **Log-log $q$ vs. $t$** with type curve overlay | Primary matching tool |
| **Semi-log $q$ vs. $t$** | Quick check for exponential tail |
| **Log-log $q$ vs. $N_p$** | Boundary-dominated flow signature (straight line) |
| **Derivative plots** | Identify flow regime transitions |

## Comparison to Modern Methods

| Aspect | Fetkovich Type Curves | [[Modified Hyperbolic (Robertson)]] | [[Duong Method]] | [[Power Law Exponential]] |
|---|---|---|---|---|
| **Year** | 1980 | 1988 | 2010 | 2008 |
| **Flow geometry** | Radial | Any (empirical) | Linear | Any (empirical) |
| **Physical basis** | Radial flow + Arps | Arps + constraint | Linear flow | Power-law regime |
| **Yields k, h, s?** | ? Yes | No | No | No |
| **Unconventional-ready?** | Limited | ? Yes | ? Yes | ? Yes |
| **Diagnostic strength** | ? Excellent | Moderate | Good | Good |

> [!tip] Think of Fetkovich As...
> The **original RTA method** — it's not just a curve-fitting tool, it's a diagnostic framework. Even when you use modern methods for unconventional wells, understanding Fetkovich's logic helps you **reason about flow regimes** and reservoir behavior.

## Workflow in Modern Practice

1. **Apply Fetkovich type curves** for conventional wells ? get k, h, s, re + Arps parameters
2. **Apply modern methods** (Modified Hyperbolic, Duong, SEPD, PLE) for unconventional wells
3. **Use Fetkovich diagnostics** (log-log rate plots) even for unconventional wells to identify flow regimes
4. **Validate reservoir properties** from Fetkovich against core, logs, and analog data

## When to Use Fetkovich Type Curves

> [!tip] Best Candidates
> - **Vertical conventional oil/gas wells** in homogeneous reservoirs
> - **Mature waterflood and EOR wells** (including Oxy CO2 floods)
> - Wells where you need **reservoir characterization**, not just forecasting
> - **Reserves validation** — cross-check Arps fit against physics
> - **Teaching DCA** — still the clearest way to show how transient becomes BDF

> [!danger] Avoid When
> - **Hydraulically fractured horizontal wells** ? use modern methods
> - **Multi-phase flow** beyond simple oil-water or oil-gas
> - **Heavy operational fluctuations** (BHP, lift changes)
> - **Very short histories** (<3 months) — insufficient data for reliable match

> [!note] Classification
> Fetkovich Type Curves are a **Classical** method, not a Modern unconventional one.
> They are designed for **vertical conventional wells** in radial flow geometry.
> For hydraulically fractured horizontal shale wells, use [[Modified Hyperbolic (Robertson)]],
> [[Duong Method]], [[Stretched Exponential (SEPD)]], or [[Power Law Exponential]].
> See also: [[Fetkovich Type Curves#Extensions & Successors]] for modern descendants.
## Oxy-Relevant Context

Fetkovich remains highly relevant for Oxy's mature conventional assets:
- **Permian conventional verticals** (though legacy)
- **CO2 EOR floods** (Permian, Colorado)
- **International assets** with more conventional geology
- **Waterflood surveillance** and workover evaluation

Check with the Reservoir Engineering and Surveillance teams for internal software and standard practices.

## Related
- [[Arps Equations]]
- [[Arps Hyperbolic Equation]]
- [[Hyperbolic Decline]]
- [[b-factor interpretation]]
- [[Transient vs Boundary-Dominated Flow]]
- [[EUR Estimation]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

## References

- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *Journal of Petroleum Technology*, 32(6), 1065-1077. SPE-4629.
- Fetkovich, M.J., Vienot, M.E., Bradley, M.D., & Kiesow, U.G. (1987). "Decline Curve Analysis Using Type Curves — Case Histories". *SPE Formation Evaluation*, 2(4), 637-656. SPE-13169.
- Fetkovich, M.J., Fetkovich, E.J., & Fetkovich, M.D. (1996). "Useful Concepts for Decline Curve Forecasting, Reserve Estimation, and Analysis". *SPE Reservoir Engineering*, 11(1), 13-22. SPE-28628.
- Carter, R.D. (1985). "Type Curves for Finite Radial and Linear Gas-Flow Systems: Constant-Terminal-Pressure Case". *SPE Journal*, 25(5), 719-728.
- Blasingame, T.A., McCray, T.L., & Lee, W.J. (1991). "Decline Curve Analysis for Variable Pressure Drop / Variable Flowrate Systems". SPE-21513.
- Agarwal, R.G., Gardner, D.C., Kleinsteiber, S.W., & Fussell, D.D. (1999). "Analyzing Well Production Data Using Combined Type-Curve and Decline-Curve Analysis Concepts". *SPE Reservoir Evaluation & Engineering*, 2(5), 478-486.