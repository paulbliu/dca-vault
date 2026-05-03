
**Created:** 2026-04-29
**Tags:** #case-study #dca #permian #midland-basin #spraberry #oxy

> [!info] Quick Facts
> - **Well:** SOUTH CURTIS RANCH 401SP
> - **API:** 42329436770000
> - **Asset:** Midland Basin — Spraberry (Trend Area)
> - **Reservoir:** Middle Spraberry, Midland County, TX
> - **Direction:** Horizontal
> - **First production:** December 2019
> - **Peak rate:** ~1,180 BOPD (February 2020)
> - **History:** 76 months (through March 2026)
> - **Cumulative observed:** ~453 MBO
> - **Current rate:** ~95 BOPD
> - **Status:** Active, now in late-life decline

## Objective
A **second case study** to compare against [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]. This well contrasts in several ways:

| Aspect | SILVERTIP 76-16 Q 2H | **SOUTH CURTIS RANCH 401SP** |
|---|---|---|
| Basin | Delaware (Phantom) | **Midland (Spraberry)** |
| Reservoir | Wolfcamp | **Middle Spraberry** |
| Peak rate | 3,183 BOPD | **1,180 BOPD** |
| History | 61 months | **76 months** |
| Cumulative | 925 MBO | **453 MBO** |
| Operational issues | Clean | **Multiple workovers, shut-in** |

This well is **lower-rate, longer-history, with significant operational noise** — a great test of how DCA methods handle **messier real-world data**.

## Results Visualization

![[south_curtis_ranch_dca_comparison.png]]

*Top-left: rate history with forecasts (excluded operational months in gray); Top-right: semi-log 30-year forecast; Bottom-left: cumulative production; Bottom-right: EUR comparison*

## Data Cleaning Approach

Unlike SILVERTIP (which had clean monthly data), this well required careful QC:

> [!tip] Data Cleaning Best Practices Demonstrated Here
> 1. **Excluded partial producing months** (< 15 days producing) — these distort rate estimates
> 2. **Excluded known operational event** (June-October 2022) — well was shut-in July 2022, with severe workover-driven rate anomalies through October
> 3. **Retained all data for cumulative calculation** — production still counts for EUR even if the month isn't used for rate fitting
> 4. **Marked excluded points with gray X's** on the plot for transparency

This is standard engineering practice: **fit the underlying decline trend, not operational noise**.

## Fitted Parameters & EUR

| Method                  | Key Parameters                   | EUR (MBO)    |
| ----------------------- | -------------------------------- | ------------ |
| **Arps Hyperbolic**     | b $\approx$ 1.5-1.9 (unbounded!) | ~2,000+ ⚠    |
| **Modified Hyperbolic** | qi, Di, b, Dmin=8%/yr            | **~700-800** |
| **Duong**               | m $\approx$ 1.1-1.3              | **~600-700** |
| **SEPD**                | t, n $\approx$ 0.35-0.45         | **~650-750** |
| **PLE**                 | $\hat{D}$i, n, D8=8%/yr          | **~700-800** |
|                         |                                  |              |

> Exact values in the attached Excel workbook.

### Key Comparison to SILVERTIP

| Well | Modern Method EUR Range | Observed to Date | % Produced of EUR |
|---|---|---|---|
| SILVERTIP (Wolfcamp Delaware) | 1,050 - 1,150 MBO | 925 MBO | ~84% |
| **SOUTH CURTIS RANCH (Spraberry Midland)** | **650 - 800 MBO** | **453 MBO** | **~60%** |

The Midland Basin Spraberry well has:
- **Lower EUR** than the Wolfcamp Delaware (typical — Wolfcamp generally outperforms Spraberry)
- **More life remaining** in percentage terms (longer-tailed decline)
- **Higher late-life gas-oil ratio** (classic solution gas drive depletion — see data)

## Key Observations

### 1. Lower-Rate Well, Different Economics
The peak rate (~1,180 BOPD) is roughly **one-third** of SILVERTIP's peak. This reflects:
- Different reservoir quality (Middle Spraberry vs. Wolfcamp)
- Potentially shorter lateral or lighter completion design
- Typical Midland Basin Spraberry performance

### 2. Real-World Operational Events Are Unavoidable
The rate history shows multiple "real engineering" events:
- **June 2022:** Rate already declining normally
- **July 2022:** Complete shut-in (0 producing days) — likely a workover
- **Aug-Oct 2022:** Severe rate anomaly (dropped from ~200 ? 14 BOPD then recovered)
- **April 2024:** Only 7 producing days (partial month, minor event)

> [!warning] Lesson: Real Production Data Is Noisy
> Textbooks show smooth decline curves — real wells have ESP failures, tubing changes, workovers, power outages, regulatory shut-ins, and weather-related downtime. **Successful DCA requires identifying and excluding these events.**

### 3. Gas-Oil Ratio Evolution (Solution Gas Drive Signature)
Looking at the raw data, **gas production per barrel of oil is increasing over time**:
- Early life (2020): ~1,000 SCF/BBL
- Mid life (2023-24): ~1,500 SCF/BBL
- Late life (2025-26): ~2,400 SCF/BBL

This is the **classic solution gas drive** behavior described in [[b-factor interpretation]]:
- Reservoir pressure has dropped below bubble point
- Dissolved gas is coming out of solution
- Gas mobility is much higher than oil mobility
- Oil production declines faster than gas

Physically, this corresponds to the higher-b end of solution gas drive (~0.4-0.5 for BDF), though the early transient data forces the fit to apparent b > 1.

### 4. Late-Life Tail Is Revealing
With 76 months of history, we can actually **observe** some of the late-life behavior the DCA methods are predicting:
- Rate has been remarkably stable at ~3,000-3,500 BOPM for 2023-2024
- Recent decline has resumed in 2025-2026 (now ~1,300-3,000 BOPM range)
- This suggests the well has **entered boundary-dominated flow** — the methods' forecasts should be increasingly trustworthy

### 5. Method Agreement Is Looser Than SILVERTIP
While all modern methods give physically reasonable EURs (650-800 MBO), the spread is **wider (~20%)** than SILVERTIP's (~10%). Why?

> [!info] Causes of Wider Spread
> 1. **Operational noise** in the middle of the history adds fit uncertainty
> 2. **Lower peak rate + more scatter** = less well-constrained parameters
> 3. **Solution gas drive signature** doesn't match the "pure fractured shale" physics some methods assume
> 4. **Longer history provides more late-life data** — amplifies small differences in late-time tails

## Engineering Interpretation

### Flow Regime Assessment
This well appears to have **transitioned from transient flow to BDF** around 2022-2023. Evidence:
- Rate stabilization (log-log flattening) in 2023-2024
- Decline slope changes in late-history semi-log plot
- Gas-oil ratio rise (indicates pressure below bubble point ? BDF/solution gas drive regime)

This means **late-history Arps with constrained b** would actually give defensible forecasts — but only on post-2022 data. Pre-2022 data is still fighting transient effects.

### Reserves Implications
For this well:
- **1P (Proved):** ~650 MBO (lowest modern method + conservative Dmin)
- **2P (Proved + Probable):** ~700-750 MBO (central modern estimates)
- **3P (Proved + Probable + Possible):** ~800 MBO (highest modern + optimistic Dmin = 6%)

Already produced 453 MBO, so remaining reserves are **~200-350 MBO** depending on category.

## Comparison: Two-Well Pattern Library

Now that you have two case studies, patterns emerge:


| Observation                    | SILVERTIP (Delaware Wolfcamp)         | South Curtis Ranch (Midland Spraberry) |     |     |
| ------------------------------ | ------------------------------------- | -------------------------------------- | --- | --- |
| Arps unconstrained gives b > 1 | ✅  Yes (b $\approx$ 1.85)             | ✅ Yes (b $\approx$ 1.5-1.9)            |     |     |
| Arps EUR unbounded             | ✅ Yes                                 | ✅ Yes                                  |     |     |
| Modern methods within ~10%     | ✅ Yes                                 | ❌ ~20% spread                          |     |     |
| Data quality                   | High                                  | Medium (operational noise)             |     |     |
| Peak rate                      | High (3,183 BOPD)                     | Moderate (1,180 BOPD)                  |     |     |
| Gas-oil ratio trend            | Flat/slightly rising                  | Strongly rising                        |     |     |
| Late-life regime               | Still transitioning to BDF            | Appears to have reached BDF            |     |     |
| Expected physics               | Fractured shale, linear flow dominant | Solution gas drive emerging            |     |     |

> [!tip] General Pattern Emerging
> 1. **All modern methods beat unconstrained Arps** for unconventionals — consistently
> 2. **Method agreement tightens with cleaner data** — operational noise is the main source of forecast uncertainty
> 3. **Longer history reveals physics** — the Midland well has enough data to see BDF emerging
> 4. **Basin matters** — Delaware Wolfcamp consistently outperforms Midland Spraberry (at least in these samples)

## Sensitivities to Investigate

For this well in particular, I'd recommend testing:

| Sensitivity | Expected Impact |
|---|---|
| Fit only post-2022 data (post-BDF) | Lower b, lower EUR by 10-20% |
| Dmin = 6%/yr vs 10%/yr | ±10-15% EUR |
| Include vs. exclude 2022 operational event | Small (already handled) |
| Economic limit = 5 vs 15 BOPD | ~±5% EUR |
| Use only last 2 years + forecast forward | Much tighter method agreement |

## Files
- Interactive chart: [[south_curtis_ranch_dca_comparison.png]](see attached)
- Full fit results + forecasts: [[south_curtis_ranch_dca_results.xlsx]](see attached)
## Related Theory
- [[Arps Equations]] — base hyperbolic form
- [[Modified Hyperbolic (Robertson)]] — primary method
- [[Duong Method]] — linear-flow-based
- [[Stretched Exponential (SEPD)]] — distributed relaxation
- [[Power Law Exponential]] — multi-regime
- [[b-factor interpretation]] — why b > 1 appears
- [[Transient vs Boundary-Dominated Flow]] — flow regime diagnosis (late-life BDF visible here!)
- [[EUR Estimation]] — reserves calculation framework

## Related Case Studies
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] — Delaware Wolfcamp comparison

## Data Source
- Database: `OXYODS`
- Table: `prodods.monthly_allocated_volumes` (joined with `mdmods.completion`)
- Query date: 2026-04-29
- 76 monthly records (December 2019 – March 2026)

✅ Works
❌ Works
✔ Works
✖ Works