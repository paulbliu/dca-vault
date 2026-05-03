**Created:** 2026-04-29

> [!info] Quick Facts
> - **Well:** SILVERTIP 76-16 UNIT Q 2H
> - **API:** 42301349600000
> - **Asset:** Texas Delaware — Phantom (Wolfcamp)
> - **Reservoir:** Wolfcamp, Loving County, TX
> - **Direction:** Horizontal
> - **First production:** March 2021
> - **Peak rate:** ~104,000 BOPD (April 2021)
> - **History:** 61 months (through March 2026)
> - **Cumulative observed:** 925 MBO
> - **Current rate:** ~180 BOPD

## Objective
Fit **five decline curve methods** to real production data from an active Wolfcamp horizontal and compare their **EUR forecasts**. This is the practical companion to the theory notes in [[01 - Concepts]].

Methods compared:
1. [[Arps Equations]] — Arps Hyperbolic (unconstrained)
2. [[Modified Hyperbolic (Robertson)]] — with $D_{\min}$ = 8% /year effective
3. [[Duong Method]]
4. [[Stretched Exponential (SEPD)]]
5. [[Power Law Exponential]] — with $D_\infty$ = 8% /year effective

## Results Visualization

![[silvertip_dca_comparison.png]]

*Top-left: rates with 15-year forecast; Top-right: semi-log 30-year forecast; Bottom-left: cumulative production; Bottom-right: EUR comparison*

## Fitted Parameters & EUR

| Method | Key Parameters | EUR (MBO) |
|---|---|---|
| **Arps Hyperbolic** | qi=104k, Di=17.5/yr, b=1.85 | **~2,700+** ?? *unbounded with b > 1* |
| **Modified Hyperbolic** | qi=104k, Di=17.5/yr, b=1.85, Dmin=8%/yr | **~1,150** |
| **Duong** | q1=105k, a=1.95, m=1.28 | **~1,050** |
| **SEPD** | qi=105k, t=0.28 yr, n=0.40 | **~1,080** |
| **PLE** | qi=104k, D^i=2.08, n=0.42, D8=8%/yr | **~1,120** |

> Exact values may vary by a few percent depending on fit bounds; see linked Excel for full parameters.

### Observed vs. forecasts
- **Observed cumulative:** 925 MBO (through March 2026)
- **Latest rate:** ~180 BOPD
- **Four of five methods agree tightly:** EUR ˜ 1,050-1,150 MBO

## Key Observations

### 1. Classic Unconventional Decline Signature
The rate history shows the **canonical shale decline shape**:
- Sharp early decline from peak (~104k BOPD ? ~600 BOPD in 24 months)
- Transition to slower decline (~600 ? ~180 BOPD over the next 36 months)
- Gradual flattening consistent with approaching boundary-dominated flow

This confirms the well spent its early life in **transient linear flow** — see [[Transient vs Boundary-Dominated Flow]].

### 2. Arps Hyperbolic Fits With b > 1 (As Expected)
The unconstrained Arps fit yields **b ˜ 1.85**, well above the physical limit of 1.0 for pure BDF. This is the textbook symptom of **fitting Arps to transient-dominated data** — see [[b-factor interpretation]].

**Consequence:** the Arps extrapolation diverges — integrated to 30+ years it produces EUR estimates that climb unbounded. Without a terminal decline constraint, pure Arps is **unusable** for this well.

### 3. Modern Methods Agree Within ~10%
The four modern methods (Modified Hyperbolic, Duong, SEPD, PLE) all converge to **EUR ˜ 1,050-1,150 MBO**. This tight agreement across physically different formulations is strong evidence that the true EUR is in this range.

> [!check] Validation Insight
> When 4 independent methods converge to within 10% of each other on a well with 5 years of history, the EUR estimate is **highly defensible** for reserves bookings.

### 4. Modified Hyperbolic Gives the Highest EUR
Among modern methods, Modified Hyperbolic is slightly higher (~1,150 MBO). This reflects:
- It preserves Arps' hyperbolic shape until hitting $D_{\min}$ = 8%
- Transition time $t^*$ is relatively late given b ˜ 1.85
- Small Dmin delays the exponential switch

### 5. Duong Is the Most Conservative
Duong (~1,050 MBO) is slightly lower than the others. This matches its physical basis in **linear flow** — appropriate for early-life transient behavior, may slightly underestimate if the well transitions into BDF later.

## Sensitivity: What Changes EUR?

| Assumption change              | EUR impact                   |
| ------------------------------ | ---------------------------- |
| $D_{\min}$ from 8% ---> 6%     | +10-15%                      |
| $D_{\min}$ from 8% ---> 10%    | -8-12%                       |
| $q_{ab}$ from 10 ---> 5 BOPD   | +3-5%                        |
| $q_{ab}$ from 10 ---> 20 BOPD  | -5-8%                        |
| Exclude last 6 months of data  | Fits may shift b, EUR ±5%    |
| Exclude first 6 months of data | Lower b, lower EUR by 10-20% |

> [!tip] Best Practice
> For reserves bookings at Oxy, coordinate with the **Reserves / Surveillance** team on standard $D_{\min}$ assumptions for Texas Delaware Wolfcamp wells.

## Engineering Interpretation

### Flow Regime Assessment
Looking at log-log $q$ vs. $t$, the early decline follows a slope consistent with **linear flow** (slope ˜ -1/2). There are hints of flattening at late time, suggesting the well is **transitioning toward BDF** — classic for a 5-year-old Wolfcamp horizontal.

### Physical Parameters (qualitative)
- **Duong's m = 1.28** — consistent with linear flow + mild boundary effects
- **SEPD's n = 0.40** — wide distribution of drainage timescales (typical for fractured horizontal)
- **PLE's n = 0.42** — corroborates SEPD's n value (consistency check ?)

### Reserves Classification Implications
Given the tight agreement among modern methods, this well's **1P (proved)** EUR estimate can defensibly be set at ~**1,000 MBO** (conservative end of the range), with **2P (proved + probable)** around **1,100-1,150 MBO**.

## Method Selection Guidance from This Case

> [!tip] What This Well Teaches Us
> 1. **Never use pure Arps Hyperbolic** on unconventional wells without a terminal decline — b > 1 gives unbounded EUR
> 2. **Modified Hyperbolic with a justified $D_{\min}$** is a reliable workhorse
> 3. **Method triangulation** (fitting 3-4 methods) dramatically increases confidence when they agree
> 4. **Modern methods converge** on similar answers for wells with adequate history (3+ years)
> 5. **Field data is messier than textbook curves** — monthly variability doesn't invalidate fits, but smoothing helps

## Files
- Interactive chart: [[silvertip_dca_comparison.png]](see attached)
- Full fit results + forecasts: [[silvertip_dca_results.xlsx]](see attached)

## Related Theory
- [[Arps Equations]] — base hyperbolic form
- [[Modified Hyperbolic (Robertson)]] — the workhorse
- [[Duong Method]] — linear-flow-based
- [[Stretched Exponential (SEPD)]] — distributed relaxation
- [[Power Law Exponential]] — multi-regime
- [[b-factor interpretation]] — why b ˜ 1.85 appears
- [[Transient vs Boundary-Dominated Flow]] — flow regime diagnosis
- [[EUR Estimation]] — reserves calculation framework

## Data Source
- Database: `OXYODS`
- Table: `prodods.monthly_allocated_volumes` (joined with `mdmods.completion`)
- Query date: 2026-04-29
- 61 monthly records (March 2021 – March 2026)