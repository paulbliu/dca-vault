
**Created:** 2026-04-29  
**Tags:** #workflow #type-well #analogs #dca #forecasting #planning

## Purpose
This note explains how to move from **single-well decline analysis** to a **type well / analog workflow**.

A type well is a representative production profile built from a group of analogous wells. It is commonly used for:
- development planning
- inventory valuation
- benchmarking
- economics
- reserves / resource screening
- comparing new wells to expectations

This note is intended to answer:
- what a type well is
- how to select analog wells
- how to normalize them
- how to combine them
- how to forecast the representative profile
- what pitfalls to avoid

---

## What Is a Type Well?

A **type well** is a representative production forecast derived from a group of similar wells.

It is not just an average rate curve. A good type well should reflect:
- similar geology
- similar completion style
- similar flow-regime behavior
- similar operating context
- similar forecast assumptions

### In plain language
A type well answers:

> “If I drill another well like these, what production behavior should I expect?”

---

## What Is an Analog Set?

An **analog set** is the group of wells used to build the type well.

The quality of the type well depends heavily on the quality of the analog selection.

> [!important] A bad analog set produces a bad type well.

---

# 1. Why Type Wells Matter

Type wells are used because:
- one well may not be representative
- individual wells are noisy
- planning requires a repeatable benchmark
- engineers need a practical way to compare inventory and future opportunities

They are especially important in unconventional development where:
- many wells are drilled in similar benches
- wells are often compared across pads / DSUs / spacing patterns
- economics are often built from representative cases rather than one well at a time

---

# 2. Core Workflow

A practical type-well workflow looks like this:

```text
1. Define the question
2. Select analog wells
3. QC the analog set
4. Normalize production if needed
5. Compare decline behavior
6. Decide aggregation method
7. Build representative historical type profile
8. Forecast the type well
9. Apply assumptions consistently
10. Validate against analog spread and economics
```

---

# 3. Step 1 — Define the Question

Before selecting wells, define what the type well is for.

## Examples
- “What is the representative Wolfcamp A oil well in this area?”
- “What is the expected DJ Basin Niobrara oil well profile?”
- “What is the type curve for gas-rich Delaware wells?”
- “What should the planning case be for this spacing pattern?”

### Why this matters
Different questions imply different analog sets.

A type well for:
- **reservoir benchmarking**
may differ from a type well for:
- **economics**
or:
- **reserves**

---

# 4. Step 2 — Select Analog Wells

This is the most important step.

## Good analog-selection criteria
Choose wells with similar:
- basin
- field / area
- reservoir / bench
- landing zone
- fluid character
- completion vintage
- lateral length
- completion intensity
- spacing / parent-child context
- operating style

## Possible filters
- same basin
- same bench / reservoir
- same vintage range
- same completion design family
- same stream dominance
- similar water behavior
- similar producing life range

---

## Examples from this vault
You already have cross-basin case examples that show why analogs must be chosen carefully:

- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

These demonstrate that:
- Delaware ≠ Midland ≠ DJ
- oil-rich ≠ gas-rich
- high-water ≠ low-water
- clean data ≠ noisy data

---

# 5. Step 3 — QC the Analog Set

Before combining wells, clean them.

## Remove / flag wells with:
- severe workover distortion
- incomplete history
- obvious reporting artifacts
- major operational disruptions
- unusual artificial-lift changes
- known exceptional geology
- strong parent-child interference if the target type well is for virgin development

## Diagnostic review
Use:
- [[DCA Diagnostic Toolkit]]
- [[Flow Regime Identification for DCA]]
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 6. Step 4 — Normalize Production

Normalization is often necessary before combining wells.

## Common normalization variables
- lateral length
- completed interval
- number of stages
- proppant per foot
- fluid volume per foot
- BOE if used carefully
- oil only / gas only / stream-specific normalization

---

## Typical examples
### Normalize by lateral length
$$
q_{norm} = q \times \frac{L_{ref}}{L_{well}}
$$

where:
- $L_{ref}$ = chosen reference lateral length
- $L_{well}$ = actual lateral length of the well

### Normalize cumulative similarly
$$
Q_{norm} = Q \times \frac{L_{ref}}{L_{well}}
$$

---

## Important caution
Normalization improves comparability, but it does **not** remove all differences.

> [!warning] Normalization is not magic
> Two wells with the same lateral length can still differ because of:
> - geology
> - completion quality
> - pressure support
> - spacing
> - timing
> - interference

---

# 7. Step 5 — Decide the Forecasting Lens

Before aggregating, decide what stream you are building the type well for.

## Options
- oil type well
- gas type well
- BOE type well
- multi-stream type well with separate stream forecasts

## Best practice
If stream behavior differs materially:
- build oil and gas type wells separately
- use BOE later only as a summary

See:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 8. Step 6 — Choose Aggregation Method

There is more than one way to build a representative profile.

## A. Arithmetic mean
Average the normalized rates at each time step.

### Pros
- simple
- intuitive

### Cons
- sensitive to outliers

---

## B. Median profile
Use the median normalized rate at each time step.

### Pros
- more robust to outliers
- often better for practical type wells

### Cons
- can look less smooth

---

## C. Percentile envelopes
Build:
- P10
- P50
- P90

### Pros
- captures uncertainty
- useful for planning and economics

### Cons
- requires a good analog set and sufficient well count

---

## D. Representative-well approach
Choose one well as the anchor case if it is the clearest / most representative.

### Pros
- easy to explain

### Cons
- less statistically robust
- may overrepresent one well’s quirks

---

# 9. Step 7 — Build the Historical Type Profile

After selecting and normalizing analogs:
- align them in time
- usually from first production or peak month
- calculate the chosen representative profile

## Common alignment choices
- first production
- peak month
- first full production month
- fixed month count after startup

### Best practice
Use the alignment that best supports the question being asked, and document it.

---

# 10. Step 8 — Forecast the Type Well

Once the representative historical profile is built, forecast it using the same DCA logic you use for single wells.

## Common methods
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

## Best practice
Use the same philosophy as in single-well work:
- diagnose first
- fit reasonably
- compare methods
- document assumptions

---

# 11. Step 9 — Apply Consistent Assumptions

Type-well forecasting is only meaningful if assumptions are standardized.

## Keep consistent:
- economic limit
- terminal decline convention
- nominal vs effective decline basis
- fit start definition
- stream choice
- normalization method
- excluded intervals
- forecast horizon

See:
- [[DCA Assumptions Library]]
- [[Decline Rate Conventions and Conversions]]

---

# 12. Step 10 — Validate the Type Well

A type well should be checked against:

- spread of individual analogs
- known case studies
- flow-regime reasonableness
- stream behavior
- economics
- historical expectations

## Useful questions
- Is the type well too optimistic?
- Too conservative?
- Too dependent on one outlier?
- Does the type profile reflect real behavior in the analog set?
- Are early and late-life shapes both reasonable?

---

# 13. Common Pitfalls

> [!danger] Common type-well mistakes
> 1. poor analog selection
> 2. mixing incompatible basins / benches
> 3. ignoring stream differences
> 4. averaging noisy or non-QC’d wells
> 5. failing to normalize appropriately
> 6. using one outlier as the “type”
> 7. inconsistent forecast assumptions across analogs
> 8. forcing a type well to match business expectations instead of data

---

# 14. Type Well vs Single-Well Forecast

| Topic | Single-Well Forecast | Type Well |
|---|---|---|
| Goal | understand one well | represent a class of wells |
| Data source | one history | analog set |
| QC focus | one well’s anomalies | analog consistency + outliers |
| Forecast use | well-specific forecast | planning / inventory / economics |
| Main risk | misreading one well | bad analog selection |

---

# 15. Type Wells and Multi-Segment Forecasting

Type-well construction often depends on segmented logic.

Examples:
- early unconventional decline represented by one segment
- late-life tail represented by another
- modified hyperbolic as a default two-segment structure
- different stream segments for oil and gas if needed

So type-well work naturally builds on:
- [[Multi-Segment Forecasting Method]]

---

# 16. Commercial Software Commonly Used

Commercial tools that commonly support type-well workflows include:
- **Whitson+**
- **ComboCurve**
- **Harmony**
- **ARIES**
- **PHDWin / Mosaic**
- **Val Nav**

Different tools vary in:
- normalization support
- interactive DCA fitting
- type-well management
- forecast comparison
- reserves / economics integration

---

# 17. Practical Workflow Checklist

- [ ] define the question
- [ ] choose analog criteria
- [ ] gather candidate wells
- [ ] QC candidate wells
- [ ] decide stream basis
- [ ] normalize rates / cumulative if needed
- [ ] align wells consistently in time
- [ ] choose aggregation method
- [ ] build historical representative profile
- [ ] forecast with one or more methods
- [ ] apply consistent assumptions
- [ ] validate against analog spread and economics

---

# 18. Bottom Line

> [!important] A type well is only as good as its analog set and assumptions.

A strong type-well workflow:
- starts with good analog selection
- uses consistent normalization
- respects stream behavior
- uses sound DCA assumptions
- and validates against real-well variability

---

## Related Notes
- [[Multi-Segment Forecasting Method]]
- [[DCA Diagnostic Toolkit]]
- [[Case Study Workflow - OxyGPT DCA]]
- [[Case Study Index]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[DCA Assumptions Library]]
- [[DCA Method Selection Guide]]