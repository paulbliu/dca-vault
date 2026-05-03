

**Created:** 2026-04-29  
**Tags:** #checklist #type-well #qaqc #dca #workflow

## Purpose
This checklist is used to review the quality of a type-well / analog forecast before trusting it for:
- planning
- benchmarking
- economics
- inventory valuation
- reserves-style screening

A type well is only as good as:
- the analog set
- the normalization
- the QC
- the assumptions
- the forecast logic

This note provides a practical QA/QC framework for checking each of those.

---

## How to Use This Checklist
Use this checklist after building a type well and before relying on it.

It can be used for:
- a quick internal self-check
- a peer review
- a documentation aid
- a handoff note for future work

---

# 1. Objective Check

- [ ] Is the purpose of the type well clearly defined?
- [ ] Is it for planning, benchmarking, economics, or reserves-style screening?
- [ ] Is the stream basis clear (oil, gas, BOE, or multi-stream)?
- [ ] Is the basin / bench / area clearly defined?

> [!important] If the purpose is vague, the type well is likely to be vague too.

---

# 2. Analog Selection Check

- [ ] Are the analog wells geologically comparable?
- [ ] Are they from the same or clearly comparable basin / field / bench?
- [ ] Is the fluid character reasonably consistent?
- [ ] Are completion styles reasonably comparable?
- [ ] Is the vintage consistent enough to avoid major technology-mix distortion?
- [ ] Are parent-child / interference conditions comparable?
- [ ] Are obvious non-analogs excluded?

### Red flags
- mixing Delaware, Midland, and DJ without justification
- mixing oil-rich and gas-rich wells without separate logic
- mixing very different lateral / completion styles without normalization

---

# 3. Data Quality Check

- [ ] Are production histories complete enough for the purpose?
- [ ] Were obvious bad data points reviewed?
- [ ] Were shut-ins / workovers / curtailments identified?
- [ ] Were partial months handled consistently?
- [ ] Were zero-rate or anomalous months treated properly?
- [ ] Was the latest month checked for incompleteness?

### Red flags
- using unfiltered noisy data
- including wells with severe operational distortion without annotation
- ignoring reporting artifacts

Related note:
- [[Case Study Workflow - OxyGPT DCA]]

---

# 4. Stream Logic Check

- [ ] Is it clear whether the type well is oil, gas, BOE, or multi-stream?
- [ ] If BOE is used, is that justified?
- [ ] If GOR changes materially, were oil and gas handled separately?
- [ ] If water burden matters economically, was that considered?
- [ ] Is the stream logic consistent across analog wells?

### Red flags
- BOE-only type well for wells with changing GOR
- mixing gas-rich and oil-dominant wells into one stream without explanation
- ignoring water burden

Related note:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 5. Normalization Check

- [ ] Was normalization used?
- [ ] If yes, was the normalization basis documented?
- [ ] Was lateral-length normalization applied consistently?
- [ ] Were cumulative volumes normalized consistently with rates?
- [ ] Were any completion-intensity differences acknowledged?
- [ ] Does normalization improve comparability rather than hide differences?

### Red flags
- no normalization when wells are clearly different in lateral length
- inconsistent normalization across wells
- treating normalization as if it removes all geological differences

---

# 6. Time Alignment Check

- [ ] Were wells aligned consistently?
- [ ] Was the alignment basis documented (first production, peak month, first full month, etc.)?
- [ ] Is the chosen alignment appropriate for the objective?
- [ ] Are startup / flowback effects handled consistently?

### Red flags
- inconsistent alignment
- comparing one well from first production and another from peak month
- no documentation of alignment rule

---

# 7. Aggregation Method Check

- [ ] Is the aggregation method documented?
- [ ] Was arithmetic mean, median, percentile, or representative-well logic used?
- [ ] Is the chosen method appropriate for the analog spread?
- [ ] Were outliers considered before aggregation?
- [ ] Does the resulting type curve look representative of the set?

### Red flags
- using arithmetic mean with strong outliers and no justification
- selecting one well as the type well without clear reason
- no uncertainty envelope or spread awareness

---

# 8. Outlier Check

- [ ] Were extreme performers identified?
- [ ] Were outliers investigated before inclusion?
- [ ] If outliers were kept, was the reason documented?
- [ ] If outliers were removed, was that justified transparently?

### Red flags
- one or two wells dominate the type well
- outliers removed only because they were inconvenient
- no explanation of inclusion / exclusion logic

---

# 9. Flow Regime Check

- [ ] Was the likely flow regime of the analog set considered?
- [ ] Are the wells mostly transient, transitional, or BDF-like?
- [ ] Is the type well mixing fundamentally different regime behavior?
- [ ] Was flow regime considered when selecting forecast method?

### Red flags
- fitting all wells with Arps without checking regime
- combining early transient wells with mature BDF wells as if they are equivalent
- no diagnostic review before forecasting

Related notes:
- [[Flow Regime Identification for DCA]]
- [[DCA Diagnostic Toolkit]]

---

# 10. Forecast Method Check

- [ ] Is the forecasting method documented?
- [ ] Was the same method applied consistently to the type-well logic?
- [ ] Was method choice appropriate for the analog behavior?
- [ ] Were alternative methods compared if uncertainty matters?
- [ ] If using modified decline, was terminal decline documented clearly?

### Red flags
- method chosen only because it gave the biggest EUR
- method inconsistent with flow regime
- no explanation of why that method was selected

Related note:
- [[DCA Method Selection Guide]]

---

# 11. Multi-Segment Check

- [ ] Was the type well forecast segmented?
- [ ] If yes, are segment boundaries documented?
- [ ] Are those boundaries physically or operationally justified?
- [ ] Are the segments rate-continuous?
- [ ] Is cumulative production continuous?
- [ ] Is segmentation simple enough to explain?

### Red flags
- too many segments
- boundaries chosen only to improve visual fit
- discontinuities between segments

Related note:
- [[Multi-Segment Forecasting Method]]

---

# 12. Assumptions Check

- [ ] Is the economic limit documented?
- [ ] Is terminal decline documented?
- [ ] Is nominal vs effective convention documented?
- [ ] Is secant vs tangent effective convention documented if relevant?
- [ ] Are basin-specific assumptions explained?
- [ ] Are all major assumptions applied consistently across the workflow?

### Red flags
- “8% terminal decline” with no convention
- missing economic limit
- unclear nominal/effective usage
- inconsistent assumptions between wells and type curve

Related notes:
- [[DCA Assumptions Library]]
- [[Decline Rate Conventions and Conversions]]

---

# 13. Uncertainty Check

- [ ] Does the type well show only one curve or also spread / uncertainty?
- [ ] Are P10 / P50 / P90 or low / base / high views needed?
- [ ] Does the analog set naturally support uncertainty bounds?
- [ ] Was method uncertainty considered?
- [ ] Was analog variability considered?

### Red flags
- presenting a single type well as “truth”
- no discussion of uncertainty
- narrow confidence implied despite wide analog spread

---

# 14. Cross-Basin / Cross-Area Sanity Check

- [ ] Does the type well make sense versus known analogs?
- [ ] Is it broadly consistent with nearby / comparable cases?
- [ ] Does it conflict with known case-study experience in this vault?
- [ ] If it differs materially, is the reason understood?

Related notes:
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Case Study Index]]

---

# 15. Economics / Practicality Check

- [ ] Does the forecast make economic sense?
- [ ] Does the tail seem realistic for the operating burden?
- [ ] Is the water burden considered if relevant?
- [ ] Is the stream mix considered if relevant?
- [ ] Is the result useful for the intended planning purpose?

### Red flags
- unrealistic tail
- optimistic type well unsupported by analogs
- no economic-limit realism

---

# 16. Communication Check

- [ ] Can the type well be explained clearly?
- [ ] Are analog criteria documented?
- [ ] Are assumptions documented?
- [ ] Is the forecast method documented?
- [ ] Is the uncertainty communicated?
- [ ] Would another engineer understand how the type well was constructed?

### Red flags
- “black box” type well
- no reproducible workflow
- unclear basis for selection or forecast logic

---

# 17. Final Approval Questions

Before using a type well, ask:

1. **Would I defend this analog set in front of another engineer?**
2. **Would I defend the assumptions?**
3. **Would I defend the segment structure?**
4. **Would I defend the economic limit?**
5. **Would I defend the stream choice?**

If the answer is “no” to any of these, the type well is not ready.

---

# 18. Quick QA/QC Summary Checklist

- [ ] objective is clear
- [ ] analogs are appropriate
- [ ] data are QC’d
- [ ] stream logic is correct
- [ ] normalization is consistent
- [ ] alignment is documented
- [ ] aggregation is appropriate
- [ ] outliers are addressed
- [ ] flow regime is considered
- [ ] forecast method is justified
- [ ] segmentation is justified
- [ ] assumptions are documented
- [ ] uncertainty is addressed
- [ ] economics are plausible
- [ ] communication is clear

---

# 19. Bottom Line

> [!important] A type well should be reproducible, explainable, and representative.

A good type well is not just a smooth average curve. It is:
- built from credible analogs
- cleaned and normalized properly
- diagnosed thoughtfully
- forecast with consistent assumptions
- checked against uncertainty and economics

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[DCA Diagnostic Toolkit]]
- [[Case Study Workflow - OxyGPT DCA]]
- [[Case Study Index]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[DCA Method Selection Guide]]
- [[DCA Assumptions Library]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[Multi-Segment Forecasting Method]]