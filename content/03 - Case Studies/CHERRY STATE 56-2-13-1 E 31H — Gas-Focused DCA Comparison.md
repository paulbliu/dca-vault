
**Created:** 2026-04-29
**Tags:** #case-study #dca #gas #permian #wolfcamp #delaware #oxy

> [!info] Quick Facts
> - **Well:** CHERRY STATE 56-2-13-1 E 31H
> - **API:** 42389396270000
> - **Asset:** Texas Delaware — Phantom (Wolfcamp)
> - **Reservoir:** Wolfcamp, Reeves County, TX
> - **Direction:** Horizontal
> - **First production:** December 2022
> - **Peak gas rate:** ~17,540 MCFD (January 2023)
> - **History:** 41 months
> - **Observed gas cumulative:** ~6.55 BCF
> - **Observed oil cumulative:** ~411 MBO
> - **Latest representative gas rate:** ~2,816 MCFD (March 2026)
> - **This is a gas-rich oil well, not a dry gas well**

## Objective
Create a **gas-focused DCA case study** to complement the two oil-dominant cases:

- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] — clean Delaware Wolfcamp oil case
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]] — noisy Midland Spraberry oil case
- **This note** — gas-rich Wolfcamp well where gas is the primary forecasting lens

This case is useful because it shows how decline analysis changes when the **primary stream of interest is gas**, even though the well still produces significant oil.

## Results Visualization

![[cherry_state_gas_dca_comparison.png]]

*Top-left: gas rate history with excluded operational months shown in gray; Top-right: semi-log gas forecast; Bottom-left: cumulative gas; Bottom-right: gas EUR comparison*

## Why This Well Is Different

This is not a classic "dry gas" Haynesville-style well. It's better thought of as a:

> [!note] Gas-Rich Unconventional Oil Well
> CHERRY STATE 56-2-13-1 E 31H is a **Wolfcamp Delaware horizontal** producing:
> - **~6.55 BCF gas**
> - **~411 MBO oil**
>
> That is roughly:
> - 6.55 BCF = ~1.09 MMBOE gas equivalent
> - plus 0.41 MMBO oil
> - total ~1.50 MMBOE produced to date
>
> So from an energy/economic perspective, this is a **materially gas-driven well**.

## Data QC Notes

This well had a few unusual months that required engineering judgment:

### Excluded from gas-rate fitting
- **2023-02:** 0 producing days but nonzero gas/oil volumes — likely allocation/book timing artifact
- **2026-04:** gas collapsed to ~145 MCFD with zero oil/water — likely curtailment, temporary shut-in, or partial reporting month

### Included in cumulative
- All recorded production still counts toward cumulative gas/oil totals

> [!tip] Rule Used Here
> For DCA fitting, exclude months that do **not represent reservoir decline behavior**.
> For cumulative accounting, include all real production.

## Fitted Methods
Gas rate was fitted with the same five decline frameworks used in the oil cases:

1. [[Arps Equations]] — Arps Hyperbolic
2. [[Modified Hyperbolic (Robertson)]]
3. [[Duong Method]]
4. [[Stretched Exponential (SEPD)]]
5. [[Power Law Exponential]]

### Gas-specific assumptions
- **Economic limit:** 500 MCFD
- **Terminal decline (for constrained methods):** 10% /year effective
  - Slightly higher than oil-case Dmin because gas wells often justify a slightly steeper terminal decline assumption

## Gas EUR Results

| Method | Gas EUR (BCF) | Comment |
|---|---|---|
| **Arps Hyperbolic** | highest / potentially unbounded | likely b > 1 issue again |
| **Modified Hyperbolic** | moderate-high | practical constrained estimate |
| **Duong** | moderate | often more conservative |
| **SEPD** | moderate | bounded by construction |
| **PLE** | moderate-high | smooth transient-to-tail behavior |

> See attached Excel for exact fit parameters and final BCF values.
### Observed to Date
- **Observed gas produced:** ~6.55 BCF
- **Observed oil produced:** ~411 MBO
- **Current representative gas rate:** ~2.8 MMCFD

So this well has already produced a substantial fraction of its gas EUR and is now in the **late transient / early BDF** part of life.

## Key Observations

### 1. Gas Decline Is Smoother Than Oil Decline
Compared with oil-focused cases, the gas rate here is visually smoother and more monotonic after startup. This often happens in gassier unconventional wells because:
- gas mobility is higher
- gas relative permeability improves as pressure drops
- gas stream can dominate the production signature even if oil remains meaningful

### 2. GOR Is Very High
This well's gas-oil ratio is high from the start and remains elevated. Approximate scale:

- Early life: **~10,000–15,000 scf/bbl**
- Later life: often still **>20,000 scf/bbl** in some months

That makes this fundamentally different from the previous two oil-led case studies.

> [!info] Interpretation
> This is not just “an oil well with some gas.”
> It behaves much more like a **gas-rich Wolfcamp unconventional well**, and gas DCA is the right lens for EUR.

### 3. Oil and Gas Should Be Analyzed Separately
One of the best lessons from this case:

> [!tip] For Multi-Stream Wells
> - Fit **gas decline** separately when gas drives value or dominates BOE
> - Fit **oil decline** separately if liquid economics matter
> - Then combine streams in economics / BOE analysis
>
> A single “overall BOE decline curve” can hide important physics.

### 4. Operational/Reporting Noise Still Matters
Even on a gas-focused well, monthly data can still include:
- allocation anomalies
- curtailment months
- reporting artifacts
- partial months

The February 2023 and April 2026 records are good reminders that **monthly data always needs QC**.

## Engineering Interpretation

### Flow Regime
The early decline suggests prolonged transient behavior consistent with fractured unconventional wells:
- sharp early drop from peak gas
- long tail through 2024–2026
- decline still slowing, but not fully “flat” in a conventional BDF sense

So, just like the oil cases, unconstrained hyperbolic likely produces **b > 1** and overstates EUR if used blindly.

### Why Gas DCA Matters Here
Gas wells/wet-gas wells often behave differently than oil wells because:
- gas compressibility is much higher
- pseudo-pressure effects matter physically (even if not explicitly modeled here)
- GOR evolution changes economic mix
- abandonment limit is in **MCFD**, not BOPD

This is where [[Rate Transient Analysis (RTA)]] becomes especially valuable if flowing pressure data exists.

## Comparison Against the Other Two Case Studies

| Well | Primary Lens | Observed Hydrocarbon Type | Main Lesson |
|---|---|---|---|
| SILVERTIP 76-16 UNIT Q 2H | Oil | oil-dominant | clean data, strong modern-method agreement |
| SOUTH CURTIS RANCH 401SP | Oil | oil-dominant | noisy data, workovers, BDF emerging |
| **CHERRY STATE 56-2-13-1 E 31H** | **Gas** | **gas-rich** | separate-stream DCA, high GOR, gas-centric economics |

### Pattern Library You Now Have
You now cover three important unconventional cases:
1. **Clean oil-rich Delaware well**
2. **Noisy Midland oil well**
3. **Gas-rich Delaware well**

That is a very strong practical reference set.

## What This Case Teaches About Method Selection

### Use gas-focused DCA when:
- gas is a major portion of BOE
- GOR is high from startup
- economics depend materially on gas/NGL stream
- you want gas reserves / gas EUR, not just oil EUR

### Use oil-focused DCA when:
- oil dominates economics
- gas is secondary
- you're benchmarking against oil-type curves

### Use both when:
- the well is multi-stream and both matter
- gas/oil behavior diverges over time
- you're doing full reserves / economic evaluation

## Good Follow-Up Analyses for This Well
This case opens up several next-level ideas:

1. **Oil-only DCA on the same well**
   - compare oil EUR vs gas EUR
   - see whether oil and gas imply the same flow regime

2. **GOR trend note**
   - create a mini note on gas-oil ratio evolution
   - link to [[b-factor interpretation]] and [[Transient vs Boundary-Dominated Flow]]

3. **BOE economics comparison**
   - convert gas to BOE
   - compare stream contributions over time

4. **RTA note extension**
   - discuss how pseudo-pressure / gas material balance would complement this DCA

## Files
- Interactive chart: [[cherry_state_gas_dca_comparison.png]](see attached)
- Full fit results + forecasts: [[cherry_state_gas_dca_results.xlsx]](see attached)

## Related Theory
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]
- [[EUR Estimation]]
- [[b-factor interpretation]]
- [[Transient vs Boundary-Dominated Flow]]
- [[Rate Transient Analysis (RTA)]]

## Related Case Studies
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

## Data Source
- Database: `OXYODS`
- Table: `prodods.monthly_allocated_volumes`
- Joined to: `mdmods.completion`
- Query date: 2026-04-29
- 41 monthly records (Dec 2022 – Apr 2026)