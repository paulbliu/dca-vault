
**Created:** 2026-04-29
**Tags:** #concept #dca #eur #reserves #forecasting

## Definition
**Estimated Ultimate Recovery (EUR)** is the total volume of hydrocarbons expected to be economically recoverable from a well or reservoir over its entire producing life. For a single well, it's the integral of the production rate from start until the economic limit:

$$
EUR = N_p^{\text{cum to date}} + \int_{t_{\text{now}}}^{t_{\text{abandon}}} q(t) \, dt
$$

Where:
- $N_p^{\text{cum to date}}$ = cumulative production already produced
- $q(t)$ = forecast rate from a decline model
- $t_{\text{abandon}}$ = time when rate hits the economic limit

EUR is the **fundamental output** of decline curve analysis and drives reserves bookings, economics, and development decisions.

## EUR from Each Arps Form

### Exponential (b = 0)
$$
EUR = N_p^{\text{cum}} + \frac{q_{\text{now}} - q_{\text{ab}}}{D}
$$

### Hyperbolic (0 < b < 1)
$$
EUR = N_p^{\text{cum}} + \frac{q_{\text{now}}^b}{D_i (1-b)} \left(q_{\text{now}}^{1-b} - q_{\text{ab}}^{1-b}\right)
$$

### Harmonic (b = 1)
$$
EUR = N_p^{\text{cum}} + \frac{q_{\text{now}}}{D_i} \ln\left(\frac{q_{\text{now}}}{q_{\text{ab}}}\right)
$$

Where $q_{\text{ab}}$ = abandonment (economic limit) rate.

> [!info] Why Hyperbolic Integration Needs $q_{ab}$
> For **b = 1**, the integral to infinity diverges — the math says EUR is infinite. Applying an economic cutoff $q_{ab}$ gives a finite, realistic answer. See [[b-factor interpretation]] for why this matters.

## The Economic Limit (Abandonment Rate)
$q_{\text{ab}}$ is the rate at which the well no longer covers its operating costs:

$$
q_{\text{ab}} = \frac{OpEx_{\text{monthly}}}{Price \cdot NRI \cdot (1 - Severance Tax)}
$$

**Typical values:**

| Well Type | Typical $q_{ab}$ |
|---|---|
| Permian horizontal oil | 5–15 BOPD |
| Permian vertical oil | 1–5 BOPD |
| Dry gas well | 30–100 MCFD |
| Offshore deepwater | 500+ BOPD |

Economic limits are **highly sensitive to price and OpEx** — a price drop can cut EUR significantly by pulling in $t_{\text{abandon}}$.

## EUR Workflow

```
1. Gather production history
   
2. Identify flow regime (Transient vs BDF)  →  [[Transient vs Boundary-Dominated Flow]]
   
3. Select decline model (Arps, Modified, Duong, SEPD)
   
4. Fit parameters (qi, Di, b, possibly D_min)
   
5. Validate fit (statistical + analog check)
   
6. Apply economic limit (q_ab)
   
7. Integrate to get EUR
   
8. Compare against volumetric/analog estimates
```

## EUR Ranking by Decline Model
For identical $q_i$ and $D_i$, EUR ranking is:

| Rank | Model | Why |
|---|---|---|
| 1 (lowest) | [[Exponential Decline]] | Fastest, constant decline |
| 2 | [[Hyperbolic Decline]] (low b) | Decline slows moderately |
| 3 | [[Hyperbolic Decline]] (high b) | Decline slows significantly |
| 4 (highest) | [[Harmonic Decline]] | Slowest decline, infinite if no $q_{ab}$ |

> [!warning] Model Selection Matters Enormously
> Switching from exponential to harmonic on the same well can **double or triple the EUR estimate**. The choice must be justified by **physics and analog data**, not curve-fit quality alone.

## Reserves Categories & EUR

EUR is the foundation for the standard reserves classifications used in corporate reporting:

| Category | Probability | How EUR Is Typically Derived |
|---|---|---|
| **1P (Proved / P90)** | =90% | Conservative Arps, often exponential terminal; strict analog match |
| **2P (Proved + Probable / P50)** | =50% | Best-estimate hyperbolic with reasonable b |
| **3P (Proved + Probable + Possible / P10)** | =10% | Upper-bound hyperbolic with favorable parameters |

Regulatory frameworks:
- **SEC** — strict rules for Proved; often requires demonstrated BDF
- **SPE-PRMS** — more flexible, probabilistic framework
- **Internal Oxy standards** — check with Reserves/Surveillance groups

## Common EUR Pitfalls

> [!danger] Avoid These Mistakes
> 1. **Fitting Arps to transient data** — inflates b and EUR
> 2. **No terminal decline** on unconventional wells — unbounded EUR
> 3. **Ignoring downtime** — gaps in production history distort the fit
> 4. **Wrong economic limit** — stale prices or OpEx assumptions
> 5. **Over-fitting** — model fits history perfectly but forecasts poorly
> 6. **No analog check** — EUR far from offset wells without good reason
> 7. **Not accounting for artificial lift changes** — ESP ? rod pump transitions change the decline
> 8. **Forgetting NGL/gas associated with oil wells** — all-streams EUR vs. oil-only EUR

## Uncertainty in EUR
EUR is a **point estimate** but real uncertainty can be ±30–50%. Best practice:

### Deterministic Approach
- Run three fits: low / mid / high b
- Report as P90 / P50 / P10

### Probabilistic Approach (Monte Carlo)
- Sample distributions for $q_i$, $D_i$, b, $q_{ab}$
- Run thousands of iterations
- Build EUR distribution

### Analog-Based Approach
- Compile EURs from offset wells
- Apply statistical distribution to new well
- Most useful for undeveloped locations (type curves)

## Type Curves & EUR
For **undeveloped locations**, a **type well** is built by normalizing and averaging producing offsets:

1. Normalize each well's history (by lateral length, proppant intensity, etc.)
2. Average rates at each time step
3. Fit the averaged curve ? "type curve"
4. Apply to new location with inventory assumptions

This is how most unconventional **EUR/well** inputs for development planning are generated.

## Practical Example Parameters (Permian Horizontal Oil)
Illustrative values — real wells vary widely:

| Parameter | Typical Range |
|---|---|
| $q_i$ (peak rate) | 500 – 2500 BOPD |
| $D_i$ (initial decline, annual) | 70% – 85% |
| b (early, transient) | 1.0 – 1.6 |
| $D_{\min}$ (terminal) | 6% – 10% |
| EUR | 400 – 1200 MBO |
| IP30 / IP90 correlation | Strong predictor of EUR |

> Specific numbers depend heavily on bench, lateral length, proppant loading, vintage, and asset area. Use internal Oxy type curves for planning.

## Tools & Software
- **ComboCurve** — modern cloud-based DCA (widely used)
- **ARIES** — long-standing reserves software
- **Val Navigator / PHDWin** — reserves economics
- **Excel/Python** — ad-hoc fits, diagnostics, research
- **Spotfire** — visualization of offset well EURs
- **Internal Oxy tools** — check with the Reserves and Surveillance teams

## Related
- [[Arps Equations]]
- [[Exponential Decline]]
- [[Hyperbolic Decline]]
- [[Harmonic Decline]]
- [[b-factor interpretation]]
- [[Transient vs Boundary-Dominated Flow]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]

## References
- Arps, J.J. (1945). "Analysis of Decline Curves". *Trans. AIME*, 160, 228-247.
- SPE-PRMS (2018). "Petroleum Resources Management System".
- SEC Rule 4-10 of Regulation S-X (2009 Modernization).
- Lee, W.J. & Sidle, R.E. (2010). "Gas-Reserves Estimation in Resource Plays". SPE-130102.
- Seshadri, J.N. & Mattar, L. (2010). "Comparison of Power Law and Modified Hyperbolic Decline Methods". SPE-137320.