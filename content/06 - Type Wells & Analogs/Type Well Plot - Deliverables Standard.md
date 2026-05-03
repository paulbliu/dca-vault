
**Created:** 2026-04-29  
**Tags:** #standard #type-well #deliverables #workflow #plotting

## Purpose
This note defines the standard deliverables for a type-well analysis package.

It is intended to standardize:
- what plots should be generated
- what tables should be included
- what assumptions must be documented
- how type-well results should be presented for review

This note helps make future type-well work:
- easier to compare
- easier to QC
- easier to explain
- more reusable in the vault

---

## Core Principle

> [!important] A type well is not complete unless the supporting context is visible.
> A single type-curve line is not enough.

A usable type-well package should show:
- the analog set
- the type-well construction logic
- the forecast itself
- the assumptions
- the uncertainty context

---

# 1. Minimum Deliverables

A minimum type-well deliverables package should include:

1. **Type-well plot**
2. **Analog summary table**
3. **Forecast summary table**
4. **Assumptions list**
5. **Workbook / supporting data file**
6. **Short narrative note**

---

# 2. Standard Plot Package

## Plot 1 — Aligned analog histories
### Purpose
Show the historical analog set before or during aggregation.

### Should include
- all individual analog curves
- representative type-well profile (P50 or chosen base)
- optional mean profile
- optional P10–P90 envelope

### Why
This shows whether the type well is truly representative of the analog set.

---

## Plot 2 — Historical type well + forecast
### Purpose
Show how the representative historical profile transitions into the forecast.

### Should include
- historical type-well profile
- fitted forecast curve
- if applicable: transition to exponential tail
- economic limit line
- segment boundaries if multi-segment forecast is used

### Why
This is the main “forecast plot.”

---

## Plot 3 — Cumulative production
### Purpose
Show cumulative behavior and long-term implications.

### Should include
- historical cumulative type-well profile
- forecast cumulative
- optionally analog cumulative context

### Why
Cumulative plots often reveal unrealistic tails more clearly than rate plots.

---

## Plot 4 — Analog context plot
### Purpose
Show where the type well sits relative to the analog population.

### Should include one of:
- observed cumulative bar chart
- peak-rate comparison
- EUR comparison
- boxplot / spread summary

### Why
This shows whether the chosen type well is too optimistic, too conservative, or well-centered.

---

# 3. Recommended Standard 2x2 Plot Layout

A very practical standard is:

## Top-left
**Aligned analog histories**

## Top-right
**Historical type well + forecast**

## Bottom-left
**Cumulative type well + cumulative forecast**

## Bottom-right
**Analog context / spread summary**

This is the layout used in the first worked type-well example.

---

# 4. Standard Tables

## A. Analog summary table
Should include at minimum:
- well name
- basin / field / bench
- peak month
- peak rate
- cumulative oil / gas / water
- QC status or comments
- normalization basis if relevant

---

## B. Type-well aggregation table
Should include at minimum:
- aligned month index
- median rate
- mean rate
- optional percentile rates
- well count by month

### Why
This makes the aggregation method transparent.

---

## C. Forecast summary table
Should include at minimum:
- forecast method
- fitted parameters
- terminal decline
- economic limit
- transition rate / transition time if modified decline is used
- forecast horizon
- EUR / cumulative outputs

---

## D. Assumptions table
Should include:
- stream basis
- normalization basis
- alignment basis
- fit window
- nominal/effective decline convention
- secant/tangent convention if relevant
- economic limit
- terminal decline
- segmentation logic if used

---

# 5. Standard Workbook Tabs

A good supporting Excel workbook should ideally include:

1. **Analog Summary**
2. **Raw / Historical Production**
3. **Aligned Profiles**
4. **Type Well Aggregation**
5. **Forecast Summary**
6. **Forecast Curve**
7. **Assumptions**

This makes the workbook reusable and easy to audit.

---

# 6. Standard Narrative Note Contents

Each type-well note should include:

## A. Objective
What is this type well for?

## B. Analog set
Which wells were used, and why?

## C. Methodology
How were the wells aligned, normalized, aggregated, and forecast?

## D. Assumptions
What economic limits, terminal declines, and conventions were used?

## E. Key observations
What does the type well show?

## F. Limitations
What are the main uncertainties or caveats?

---

# 7. Deliverables Checklist

- [ ] analog set documented
- [ ] QC logic documented
- [ ] normalization documented
- [ ] alignment basis documented
- [ ] aggregation method documented
- [ ] historical analog plot included
- [ ] forecast plot included
- [ ] cumulative plot included
- [ ] analog spread/context plot included
- [ ] assumptions documented
- [ ] workbook attached
- [ ] narrative note written

---

# 8. Visual QA/QC Questions

Before accepting a type-well plot package, ask:

- Does the type well sit in the middle of the analog family?
- Is one outlier dominating the result?
- Does the forecast tail look plausible?
- Is the transition to terminal decline visible and explainable?
- Does the cumulative forecast look realistic?
- Does the analog spread suggest high uncertainty that should be shown explicitly?

---

# 9. Optional Nice-to-Have Deliverables

These are not mandatory, but are often useful:

## A. P10 / P50 / P90 forecast overlay
Useful for uncertainty communication.

## B. Stream-specific companion plots
Useful if oil and gas are forecast separately.

## C. Normalized and unnormalized comparison
Useful when normalization is important.

## D. Cross-basin analog comparison inset
Useful for benchmarking or educational notes.

---

# 10. Common Deliverables Mistakes

> [!danger] Common mistakes
> 1. only showing the final type curve, not the analogs
> 2. no assumptions listed
> 3. no indication of analog spread
> 4. no explanation of aggregation method
> 5. no workbook / supporting data
> 6. no cumulative plot
> 7. no distinction between historical and forecasted portions

---

# 11. Practical Standard for This Vault

For this vault, a good default type-well package should include:

## Required
- 2x2 standard plot
- workbook with supporting tabs
- markdown note with narrative and assumptions

## Preferred
- P50 base type well
- P10–P90 envelope if analog count supports it
- Modified Hyperbolic forecast as baseline
- explicit economic limit and terminal decline convention

---

# 12. Relationship to Other Notes

This note tells you **what to deliver** after you finish the workflow defined in:

- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[Type Well Construction Example - Silvertip Wolfcamp]]

---

# 13. Bottom Line

> [!important] A good type-well package is not just a curve — it is a documented, reviewable forecasting deliverable.

The best deliverables make it easy to answer:
- what analogs were used?
- how was the type well built?
- what assumptions were used?
- what uncertainty remains?
- is the result defendable?

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[Type Well Construction Example - Silvertip Wolfcamp]]
- [[DCA Assumptions Library]]
- [[DCA Diagnostic Toolkit]]