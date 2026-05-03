
**Created:** 2026-04-29
**Tags:** #assumptions #dca #workflow #reference #forecasting

## Purpose
This note documents the standard assumptions used in DCA workflows in this vault.

It is intended to:
- make case studies more consistent
- explain why certain assumptions were chosen
- provide reusable defaults for future analyses
- separate **engineering assumptions** from **formal reserves governance**

This is a **working assumptions library**, not a corporate standard.

---

## Why This Note Matters
Decline results are highly sensitive to assumptions such as:
- economic limit
- terminal decline
- fit start point
- excluded months
- stream selection
- BOE conversion
- treatment of operational noise

> [!warning] Important
> Two engineers can fit the same well with the same method and still get different EURs if their assumptions differ.
>
> That means assumptions should be documented as carefully as the method itself.

---

## Assumption Categories

This library is organized into:

1. **Economic limits**
2. **Terminal decline assumptions**
3. **Fit-window assumptions**
4. **Operational month exclusion rules**
5. **Oil vs gas vs BOE assumptions**
6. **Cross-basin interpretation assumptions**
7. **Method-comparison assumptions**
8. **When to escalate beyond DCA**

---

# 1. Economic Limit Assumptions

## Oil-focused case studies
### Default screening assumption
- **10 BOPD** for many unconventional oil wells

### Alternative mature / lower-rate assumption
- **20 BOPD** may be reasonable for a mature lower-rate oil case
- used when illustrating mature wells with lower remaining productive capacity

### Why
Economic limit is a proxy for:
- lease operating expense
- artificial lift burden
- water handling burden
- commodity prices
- ownership / NRI effects

### Notes
- Delaware / Midland wells may justify lower or higher limits depending on burden
- lower-water wells may remain viable longer at lower oil rates
- formal reserves work should use asset-specific economics

---

## Gas-focused case studies
### Default screening assumption
- **500 MCFD**

### Why
A gas economic limit should reflect:
- compression / gathering burden
- gas price
- processing / fuel use
- overhead allocation
- ownership / NRI

### Notes
- 500 MCFD is a practical screening value, not a universal truth
- dry gas, wet gas, and associated gas wells may need different thresholds

---

## BOE-focused screening
### General rule
Avoid using a single BOE economic limit as the primary engineering assumption when stream mix is changing.

### Better practice
- define oil and gas limits separately
- then summarize in BOE if needed

See:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 2. Terminal Decline Assumptions

## Oil-focused unconventional default
### Default
- **8%/yr effective terminal decline**

### Why
Used as a practical screening assumption for constrained decline models such as:
- [[Modified Hyperbolic (Robertson)]]
- [[Power Law Exponential]]

### Interpretation
This is meant to represent a plausible late-life stabilized decline tail.

---

## Gas-focused unconventional default
### Default
- **10%/yr effective terminal decline**

### Why
Gas-focused cases often justify a somewhat steeper late-life tail assumption in screening workflows.

---

## Notes on terminal decline
### Lower Dmin / terminal decline
- increases EUR
- delays flattening
- produces more optimistic long tails

### Higher Dmin / terminal decline
- lowers EUR
- gives more conservative forecasts
- reaches economic limit sooner

> [!tip] Practical rule
> If the question is “what is a defensible working estimate?” use a reasonable constrained terminal decline.
> If the question is “what is the uncertainty range?” test multiple terminal declines.

---

## When to vary Dmin
You should consider changing terminal decline if:
- basin context is different
- fluid system is different
- well is much more mature
- analogs support a different late-life slope
- reserves governance guidance requires a different standard

---

# 3. Fit-Window Assumptions

## Default starting point
### Use peak month as t = 0
This is the standard assumption for most case studies in this vault.

### Why
- avoids startup ramp-up distortion
- standardizes comparison across wells
- aligns with typical DCA practice

---

## Fit after peak, not from first production
### Default
Exclude:
- startup ramp-up
- incomplete flowback period
- obvious pre-stabilization months

### Why
Startup behavior often reflects completion cleanup, not reservoir decline.

---

## When to move the fit start later
You may shift the fit window later if:
- early transient behavior is too dominant for the intended method
- flowback dominates the earliest months
- data quality is poor near startup
- you want a BDF-focused fit for mature wells

---

## Late-life refits
For mature wells, a late-life refit may be useful when:
- current operations matter more than whole-life history
- a major regime change occurred
- artificial lift / recompletion changed the profile
- you care about remaining reserves more than total-life shape

---

# 4. Operational Month Exclusion Rules

## Default rule
Exclude months from fitting when they do not represent reservoir-driven decline behavior.

These may include:
- shut-ins
- workovers
- severe curtailment
- facility downtime
- partial months
- obvious allocation/reporting anomalies

---

## Common exclusion criteria

### A. Days producing too low
Typical screening rule:
- exclude months with **< 15 producing days**

### Why
A partial month can distort daily-rate normalization.

---

### B. Zero producing days with nonzero volume
This is usually a sign of:
- allocation timing
- booking artifact
- nonphysical monthly behavior

### Default
Exclude from fitting, but keep in cumulative accounting if it reflects real booked production.

---

### C. Sudden collapse followed by immediate recovery
Often indicates:
- operational event
- workover
- temporary shut-in
- facility issue

### Default
Exclude from fitting if clearly non-reservoir-driven.

---

### D. Final month partial / incomplete reporting
If the latest month is clearly incomplete, exclude it from fitting until data stabilizes.

---

## Golden rule for exclusions
> [!tip] Keep for cumulative, exclude from fit if needed
> A month can still count toward total production while being inappropriate for rate decline fitting.

---

# 5. Oil vs Gas vs BOE Assumptions

## Default approach
### If oil-dominant
Fit **oil** first

### If gas-dominant
Fit **gas** first

### If both matter materially
Fit **oil and gas separately**

### BOE role
Use BOE primarily as:
- summary metric
- screening metric
- communication metric

Not as the primary physics layer.

---

## BOE conversion assumption
### Default
$$
1 \text{ BOE} = 6 \text{ MCF gas}
$$

### Caution
This is an **energy conversion**, not an economic conversion.

---

## GOR interpretation assumption
If GOR changes materially with time:
- do **not** rely only on BOE
- analyze stream-level decline separately

See:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 6. Cross-Basin Interpretation Assumptions

## Default assumption
Do **not** assume that unconventional wells behave the same across basins.

### Why
Decline interpretation is affected by:
- reservoir quality
- completion design
- fluid mix
- water burden
- operating practices
- maturity

---

## Example basin assumptions from this vault

### Delaware
Often:
- high-rate
- strong transient behavior
- large hydrocarbon volumes
- modern methods tend to matter a lot

### Midland
Often:
- more operational / historical complexity in some examples
- noise and interruptions may dominate interpretation
- longer history may reveal BDF transitions

### DJ Basin
Often:
- lower water burden in some cases
- more moderate oil-rate scale
- different economic / operating character than Permian

See:
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]

---

# 7. Method-Comparison Assumptions

## Default comparison set for unconventional wells
Use:
- [[Arps Equations]] (for reference / cautionary comparison)
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

### Why
This gives:
- one classical baseline
- several bounded modern alternatives
- a view of method-driven uncertainty

---

## Use of unconstrained Arps
### Default stance
Use it mainly as:
- a comparison point
- a diagnostic warning
- a way to reveal b > 1 behavior

### Do not
Blindly trust unconstrained hyperbolic for unconventional EUR.

---

## Agreement across methods
### Interpretation assumption
- **tight agreement** ? higher confidence
- **wide spread** ? more uncertainty, stronger dependence on assumptions/QC

This is one of the most useful takeaways from the case-study workflow.

---

# 8. Remaining-Life vs Full-Life Assumptions

## Full-life perspective
Used when the goal is:
- understand the full well story
- compare total EURs
- build learning case studies

## Remaining-life perspective
Used when the goal is:
- current reserves
- short-term operational forecast
- late-life economics
- re-forecasting mature wells

### Note
A remaining-life forecast may justify:
- later fit window
- heavier focus on current decline
- stronger weighting of recent months

---

# 9. When to Escalate Beyond DCA

## Escalate to RTA when:
- pressure data exists
- reservoir properties matter
- development / spacing decisions are being made
- decline behavior is ambiguous
- formal defensibility is needed beyond screening

Use:
- [[Rate Transient Analysis (RTA)]]

---

# 10. Case-Specific Assumptions Used So Far

## [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- oil-focused
- peak-month start
- modern-method comparison
- economic limit ~10 BOPD
- constrained late-life assumption ~8%/yr
- relatively clean data

## [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- oil-focused
- operational event months excluded from fitting
- cumulative retained
- longer-history mature case
- economic limit ~10 BOPD
- constrained late-life assumption ~8%/yr

## [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- gas-focused
- gas fit separate from oil
- economic limit ~500 MCFD
- terminal decline ~10%/yr
- stream-specific interpretation emphasized

## [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]
- oil-focused
- lower-water cross-basin contrast
- economic limit ~20 BOPD
- terminal decline ~8%/yr
- basin context explicitly considered

---

# 11. Suggested Default Assumptions Table

| Category | Default screening assumption |
|---|---|
| Oil econ limit | 10 BOPD |
| Mature low-rate oil econ limit | 20 BOPD |
| Gas econ limit | 500 MCFD |
| Oil terminal decline | 8%/yr effective |
| Gas terminal decline | 10%/yr effective |
| Fit start | peak month |
| Partial-month exclusion | < 15 producing days |
| Zero-day / anomalous reporting months | exclude from fit |
| Multi-stream wells | fit streams separately if material |
| BOE | summary only, not primary physics layer |

---

# 12. Important Philosophy

> [!info] Best Use of This Library
> These assumptions are intended to make case-study work:
> - consistent
> - explainable
> - reusable
>
> They are **not** meant to replace:
> - asset-specific economics
> - reserves governance
> - surveillance judgment
> - RTA / pressure-based interpretation when required

---

## Related Notes
- [[DCA Method Selection Guide]]
- [[Case Study Workflow - OxyGPT DCA]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Rate Transient Analysis (RTA)]]