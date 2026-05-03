
**Created:** 2026-04-29  
**Tags:** #diagnostics #dca #toolkit #flow-regime #moc

## Purpose
This note consolidates the main **diagnostic tools and patterns** used in decline curve analysis (DCA).

It brings together concepts currently spread across:
- [[Flow Regime Identification for DCA]]
- [[Rate Transient Analysis (RTA)]]
- [[Fetkovich Type Curves]]
- [[Loss Ratio and Dynamic b-Factor]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- case-study notes

The goal is to answer:

- What plots and indicators should I examine before trusting a decline fit?
- What diagnostics help identify flow regime?
- How do I tell whether Arps is appropriate?
- What red flags suggest the fit is misleading?
- When should I escalate to RTA?

---

## Core Philosophy

> [!important] DCA is not just curve fitting.
> Before trusting any forecast, diagnose the well behavior.

A decline fit may look visually good but still be wrong if:
- the flow regime is inappropriate
- the data are noisy or operationally distorted
- stream behavior is changing
- decline conventions are misunderstood
- the fit is being applied outside the valid domain of the model

---

# 1. Diagnostic Categories

The diagnostic toolkit can be grouped into six categories:

1. **Flow-regime diagnostics**
2. **Rate-shape diagnostics**
3. **Derivative / decline diagnostics**
4. **Stream diagnostics**
5. **Operational / QC diagnostics**
6. **Model-comparison diagnostics**

---

# 2. Flow-Regime Diagnostics

These help answer:

> Is the well in transient flow, transition, or boundary-dominated flow?

This is one of the most important DCA questions.

---

## A. Log-log rate vs time
One of the most useful qualitative plots.

### What to look for
- strong early slope / changing curvature ? transient behavior
- long linear-flow-looking behavior ? unconventional transient regime
- flattening / slope change ? possible transition
- orderly late-time tail ? possible BDF emergence

### Why it matters
It helps decide:
- whether Arps is defensible
- whether modern unconventional methods are preferred
- whether segmentation is needed

### Best related notes
- [[Flow Regime Identification for DCA]]
- [[Transient vs Boundary-Dominated Flow]]

---

## B. Semi-log rate vs time
Useful for identifying mature exponential-like behavior.

### What to look for
- straightening late-time trend ? more exponential / mature behavior
- persistent curvature ? transient or hyperbolic influence still active

### Why it matters
A stable late-time semi-log trend often supports:
- late-life exponential tail
- modified decline transition
- more confidence in mature forecasts

---

## C. Flow-regime sequence logic
In unconventional wells, a common progression is:

Hydraulic fracture linear flow
- bilinear flow
- formation linear flow
- transition
- boundary-dominated flow


### Why it matters
Understanding the likely sequence helps interpret:
- why early decline is steep
- why b may be high
- why late behavior may justify a different segment or method

---

# 3. Rate-Shape Diagnostics

These focus on the shape of production decline itself.

---

## A. Visual curvature of rate history
Ask:
- is the decline shape smooth or irregular?
- does it show one coherent behavior or multiple phases?
- is there evidence of a break requiring segmentation?

### Why it matters
This can reveal:
- multi-segment need
- operational interruptions
- changing decline character
- unrealistic single-segment assumptions

Related note:
- [[Multi-Segment Forecasting Method]]

---

## B. Rate-cumulative behavior
Rate-cumulative plots can be useful for:
- checking rate-cumulative relationships
- checking cumulative consistency
- comparing decline families in a different domain

### Why it matters
A fit that looks reasonable in rate-time space may behave oddly in rate-cumulative space.

Related note:
- [[DCA Formula Summary]]

---

## C. Segment-boundary cues
Watch for:
- visible break in decline curvature
- apparent shift to flatter tail
- operational restart with new decline trend
- transition from noisy transient period to mature decline

These may justify:
- a new segment
- a re-fit window
- a terminal decline tail

---

# 4. Derivative / Decline Diagnostics

These are some of the most powerful diagnostics in the vault.

---

## A. Loss ratio
The loss ratio is:

$$
-\frac{q}{dq/dt}=\frac{1}{D}
$$

### Why it matters
It provides a direct diagnostic view of how decline evolves.

In ideal hyperbolic decline:

$$
\frac{1}{D(t)}=\frac{1}{D_i}+bt
$$

So:
- loss ratio vs time should be linear
- slope = $b$

Related note:
- [[Loss Ratio and Dynamic b-Factor]]

---

## B. Dynamic b-factor
A single fixed $b$ is often unrealistic over the whole life of an unconventional well.

### What to look for
- high $b$ early, lower later ? transition toward maturity
- unstable $b$ ? noisy data or regime change
- persistent $b>1$ ? transient-dominated warning

### Why it matters
Dynamic b helps distinguish:
- fit artifact
- transient behavior
- mature decline stabilization

Related note:
- [[Loss Ratio and Dynamic b-Factor]]

---

## C. RNFD-style derivative thinking
The RNFD paper adds another derivative-style diagnostic perspective.

### Conceptual relevance
RNFD tries to identify flow regimes using a normalized derivative behavior.

Even if you do not adopt RNFD directly, it reinforces the importance of:
- derivative diagnostics
- regime-specific interpretation
- not relying only on visual curve matching

Related notes:
- [[RNFD Method - Working Notes]]
- [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]]

---

# 5. Stream Diagnostics

These help answer:

> Should I fit oil, gas, or both?

---

## A. GOR trend
Gas-oil ratio is one of the most important stream diagnostics.

### What to look for
- flat GOR ? stream mix relatively stable
- rising GOR ? gas becoming more important
- volatile GOR ? allocation / operational / multiphase complexity

### Why it matters
Changing GOR can mean:
- BOE is misleading
- oil and gas should be fit separately
- fluid behavior is evolving

Related note:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

## B. Water behavior
Water trend is an important diagnostic, especially across basins.

### What to look for
- rising water burden
- stable low water burden
- operational water spikes

### Why it matters
Water affects:
- economics
- abandonment timing
- apparent decline quality
- basin-specific interpretation

Examples:
- Permian wells may show heavier water burden
- DJ case gives a lower-water contrast

Related case:
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

---

## C. Stream divergence
If oil and gas decline differently, that is diagnostic in itself.

### Practical implication
If both streams matter materially:
- fit separately
- summarize in BOE later if needed

Related note:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 6. Operational / QC Diagnostics

Before diagnosing reservoir behavior, diagnose the data.

---

## A. Partial months
Watch for:
- low producing days
- low hours producing
- incomplete latest month

### Why it matters
Rate normalization can become misleading.

---

## B. Shut-ins and workovers
Look for:
- zero or near-zero production months
- sudden collapse followed by recovery
- obvious restart behavior

### Why it matters
These often distort the decline shape and should be excluded from fitting.

---

## C. Allocation / reporting artifacts
Red flags include:
- 0 producing days but nonzero volume
- anomalous final month
- extreme one-month reversals not supported by operations

### Why it matters
These are not reservoir signals.

---

## D. Noise versus true behavior
Always ask:
- is this a real regime shift?
- or just an operational anomaly?

Related note:
- [[Case Study Workflow - OxyGPT DCA]]

---

# 7. Model-Comparison Diagnostics

Sometimes the best diagnostic is comparing methods.

---

## A. Method spread
Fit multiple reasonable methods:
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

### Interpretation
- **tight agreement** ? more confidence
- **wide spread** ? more uncertainty or poor data / regime ambiguity

---

## B. Arps as a warning signal
Unconstrained hyperbolic can still be useful diagnostically.

### If it gives:
$$
b > 1
$$

that often means:
- transient-dominated behavior
- pure Arps is not safe for long-term extrapolation

### Why it matters
A “good” visual hyperbolic fit may actually be a warning.

---

## C. Segment necessity
If one model requires ugly compromises but a two-segment structure makes physical sense, that is diagnostic.

Related note:
- [[Multi-Segment Forecasting Method]]

---

# 8. Practical Diagnostic Workflow

A practical DCA diagnostic workflow could look like this:

```text
1. QC the data
2. Decide stream: oil, gas, or both
3. Plot rate vs time (linear, semi-log, log-log if possible)
4. Examine early vs late behavior
5. Check for operational anomalies
6. Evaluate GOR / water trends if multi-stream
7. Fit one or more reasonable methods
8. Check for high b, unstable fit, or method spread
9. Decide whether regime is transient, transitional, or BDF-like
10. Decide whether DCA is sufficient or whether RTA is needed
```

---

# 9. Diagnostic Red Flags

> [!danger] Major red flags
> - unconstrained hyperbolic with persistent $b>1$
> - visually nice fit on noisy / distorted data
> - BOE-only analysis when stream mix is changing
> - no justification for fit-window choice
> - no explanation of terminal decline assumption
> - using one model only and hiding uncertainty
> - forcing one segment across obvious regime changes

---

# 10. Diagnostic Green Flags

> [!tip] Good signs
> - clean, well-QC’d data
> - coherent decline behavior
> - flow regime interpretation is documented
> - method agreement is reasonable
> - segment boundaries are justified
> - stream behavior is understood
> - assumptions are explicit

---

# 11. Which Note to Open for Which Diagnostic Problem

| Diagnostic question | Best note |
|---|---|
| Is Arps even valid here? | [[Flow Regime Identification for DCA]] |
| Why is b changing? | [[Loss Ratio and Dynamic b-Factor]] |
| Do I fit oil, gas, or BOE? | [[Oil vs Gas vs BOE Decline Analysis]] |
| Do I need multiple segments? | [[Multi-Segment Forecasting Method]] |
| Do I need stronger physics? | [[Rate Transient Analysis (RTA)]] |
| What assumptions am I making? | [[DCA Assumptions Library]] |
| Why are software outputs different? | [[Decline Rate Conventions and Conversions]] |

---

# 12. Case Studies That Demonstrate Diagnostics

## [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
Shows:
- clean unconventional oil behavior
- why unconstrained Arps can mislead
- strong method comparison

## [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
Shows:
- operational noise
- workover exclusion logic
- importance of QC before diagnosis

## [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
Shows:
- gas-focused diagnostics
- stream-specific interpretation
- high-GOR behavior

## [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]
Shows:
- lower-water cross-basin contrast
- how basin context changes the diagnostic mental model

---

# 13. Bottom Line

> [!important] Diagnostics come before trust.
> A decline forecast should be trusted only after:
> - the data have been QC’d
> - the stream choice is justified
> - the flow regime has been considered
> - the assumptions are clear
> - the model behavior makes physical sense

A good forecast is not just a good-looking curve. It is a good-looking curve that also passes diagnostic scrutiny.

---

## Related Notes
- [[Flow Regime Identification for DCA]]
- [[Rate Transient Analysis (RTA)]]
- [[Fetkovich Type Curves]]
- [[Loss Ratio and Dynamic b-Factor]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[Case Study Workflow - OxyGPT DCA]]
- [[DCA Method Selection Guide]]
- [[DCA Assumptions Library]]
- [[Multi-Segment Forecasting Method]]