

**Created:** 2026-04-29  
**Tags:** #framework #uncertainty #type-well #analogs #forecasting

## Purpose
This note defines a framework for handling uncertainty in type-well construction and forecasting.

It is intended to answer:
- where type-well uncertainty comes from
- how to classify it
- how to quantify it
- how to communicate it
- how to avoid presenting a type well as if it were a single “truth”

This note supports:
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Type Well Plot - Deliverables Standard]]
- [[DCA Assumptions Library]]

---

## Why This Matters

> [!important] A type well is not a fact — it is an estimate with uncertainty.

Even a carefully built type well can vary because of:
- analog selection
- data quality
- normalization choices
- alignment choices
- forecast method
- terminal decline assumption
- economic limit
- real geological and operational variability

If uncertainty is not shown, the type well can create false confidence.

---

# 1. Main Sources of Uncertainty

Type-well uncertainty usually comes from five major sources:

## A. Analog uncertainty
Uncertainty caused by which wells were included or excluded.

## B. Data uncertainty
Uncertainty caused by noisy, incomplete, or distorted histories.

## C. Method uncertainty
Uncertainty caused by the choice of forecast model.

## D. Assumption uncertainty
Uncertainty caused by choices such as:
- terminal decline
- economic limit
- fit start
- nominal/effective convention

## E. Future performance uncertainty
Uncertainty caused by the fact that the future may not behave like the historical analogs.

---

# 2. Analog Uncertainty

This is often the largest uncertainty source.

## Causes
- analog wells may not be truly comparable
- basin / bench differences may remain
- outliers may distort the group
- small analog count may make the type well unstable

## Practical examples
- one unusually strong well raises the average
- one noisy well widens the spread
- one different completion generation changes the apparent benchmark

## Best practice
Show uncertainty using:
- median rather than just mean
- analog envelopes
- P10 / P50 / P90 curves
- outlier review

Related note:
- [[Analog Selection Criteria by Basin - Bench]]

---

# 3. Data Uncertainty

Even a good analog set can contain bad or imperfect data.

## Common causes
- shut-ins
- partial months
- workovers
- reporting artifacts
- late-month incompleteness
- stream allocation issues

## Why this matters
Noise can affect:
- early decline shape
- b-value
- aggregation quality
- forecast fit
- perceived type-well stability

## Best practice
- QC each well before aggregation
- document exclusion logic
- do not confuse reporting noise with reservoir behavior

Related note:
- [[DCA Diagnostic Toolkit]]

---

# 4. Method Uncertainty

Different decline methods can produce different type-well forecasts even when the same historical type profile is used.

## Common methods
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

## Why this matters
The method is not just a mathematical choice — it embeds assumptions about:
- transient behavior
- long tails
- boundedness
- transition to maturity

## Best practice
Use method spread as one layer of uncertainty:
- compare at least two plausible methods
- do not report one method as if it were uniquely correct

---

# 5. Assumption Uncertainty

Some uncertainty comes not from the well or analogs, but from human choices.

## Major assumption drivers
- economic limit
- terminal decline
- stream basis
- alignment rule
- normalization rule
- fit window

## Example
A type well with:
- 6% terminal decline
may have materially higher EUR than one with:
- 10% terminal decline

Even though the historical type profile is identical.

## Best practice
Test sensitivity to assumptions instead of hiding them.

Related note:
- [[DCA Assumptions Library]]

---

# 6. Three Useful Uncertainty Lenses

A practical uncertainty framework should usually consider three lenses:

## Lens 1 — Analog spread
How much do the analog wells differ from each other?

## Lens 2 — Method spread
How much do different forecasting methods differ on the same representative profile?

## Lens 3 — Assumption sensitivity
How much does the result change when key assumptions are varied?

---

# 7. P10 / P50 / P90 Thinking

A useful way to communicate uncertainty is through percentile thinking.

## P50
Best-estimate / median case

## P10
Higher outcome / more optimistic case

## P90
Lower outcome / more conservative case

> [!note] Important
> In practice, different teams sometimes use P10 / P50 / P90 differently.
> The key is to document what the percentile means in your workflow.

---

## How percentiles may be constructed
There are several ways:

### A. Analog percentiles
Use analog population spread directly.

### B. Forecast percentiles
Use percentile historical type curves and then forecast each.

### C. Combined uncertainty
Blend analog spread, method spread, and assumption sensitivity.

---

# 8. Practical Ways to Build Type-Well Uncertainty

## Option A — Historical analog envelope
Build:
- P10 rate
- P50 rate
- P90 rate

at each aligned month.

### Pros
- easy to explain
- grounded in actual analog population

### Cons
- may not directly capture forecast-method uncertainty

---

## Option B — Forecast-method envelope
Fit several methods to the same historical P50 profile.

For example:
- Modified Hyperbolic
- Duong
- SEPD
- PLE

Then compare EUR and tail shape.

### Pros
- captures modeling uncertainty

### Cons
- does not capture analog-set uncertainty directly

---

## Option C — Assumption sensitivity envelope
Hold the historical type profile fixed and vary:
- terminal decline
- economic limit
- fit window
- stream basis

### Pros
- shows forecast sensitivity to assumptions

### Cons
- still depends on one selected type-well history

---

## Option D — Combined framework
Best overall approach:

1. build analog spread
2. fit one or more methods
3. test key assumptions
4. summarize low / base / high

### Pros
- most realistic
- strongest communication framework

### Cons
- more work
- more moving parts to document

---

# 9. Recommended Practical Framework for This Vault

For a practical and defensible type-well uncertainty package, I recommend:

## Base case
- **P50 historical type profile**
- forecast with **Modified Hyperbolic**

## Low case
- lower analog percentile or conservative subset
- conservative terminal decline / economics
- possibly a more conservative method or parameter set

## High case
- upper analog percentile or stronger subset
- less conservative terminal decline
- compare against alternate modern methods

---

# 10. Suggested Uncertainty Deliverables

A good type-well uncertainty package should include:

## A. Historical analog spread plot
- all analogs
- P10 / P50 / P90 or equivalent envelope

## B. Forecast comparison plot
- one or more method overlays
- type-well historical profile
- terminal decline assumptions shown if relevant

## C. EUR comparison table
By:
- analog percentile
- method
- assumption set

## D. Assumptions sensitivity table
For:
- terminal decline
- economic limit
- fit window

---

# 11. Example Uncertainty Table

| Case | Analog basis | Forecast method | Terminal decline | Econ limit | Result |
|---|---|---|---|---|---|
| Low | P90 historical analog envelope | Modified Hyperbolic | 10%/yr | conservative | lower EUR |
| Base | P50 historical profile | Modified Hyperbolic | 8%/yr | base | central EUR |
| High | P10 historical analog envelope | PLE / SEPD / less conservative tail | 6%/yr | optimistic | higher EUR |

> [!tip] This table is illustrative.
> The point is to make uncertainty explicit, not hidden.

---

# 12. Common Mistakes

> [!danger] Common uncertainty mistakes
> 1. reporting only one type-well curve
> 2. using mean only, with no spread context
> 3. ignoring method uncertainty
> 4. ignoring assumption sensitivity
> 5. treating one strong analog as the whole story
> 6. presenting a precise EUR without documenting uncertainty drivers

---

# 13. Communication Guidance

When presenting a type well, avoid saying:

- “the type well EUR is 900 MBO”

Prefer saying:

- “the base type-well EUR is ~900 MBO, with uncertainty driven by analog spread, method choice, and terminal decline assumptions”

That is more defensible and more honest.

---

# 14. QA/QC Questions for Uncertainty

Before accepting a type-well uncertainty framework, ask:

- Does the analog spread look reasonable?
- Are outliers understood?
- Is the base case representative?
- Are high and low cases justified?
- Is method uncertainty visible?
- Are assumption sensitivities documented?
- Would another engineer understand what makes the high case high?

---

# 15. Relationship to Other Notes

This note should be used together with:

- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Type Well Plot - Deliverables Standard]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[DCA Assumptions Library]]
- [[DCA Diagnostic Toolkit]]

---

# 16. Bottom Line

> [!important] A type well should never be presented without uncertainty context.

At minimum, uncertainty should reflect:
1. analog spread
2. method spread
3. assumption sensitivity

A good type well is not just representative — it is also transparent about what could reasonably vary.

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Type Well Plot - Deliverables Standard]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[DCA Assumptions Library]]
- [[DCA Diagnostic Toolkit]]