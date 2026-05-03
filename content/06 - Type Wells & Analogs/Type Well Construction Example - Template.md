
**Created:** 2026-04-29  
**Tags:** #example #type-well #analogs #dca #workflow

## Purpose
This note provides a worked example of how to construct a type well from an analog set.

It is not tied to one specific final dataset yet; instead, it documents the **process** clearly enough that it can be reused later with real wells.

This note is intended to connect:
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]

---

## Objective
Build a representative type well from a small analog set by:

1. defining the objective
2. selecting analog wells
3. QC’ing the analog set
4. normalizing production
5. aligning wells in time
6. aggregating the profiles
7. forecasting the representative type curve
8. checking the result

---

# 1. Define the Objective

## Example objective
> Build an oil-focused type well for a set of unconventional horizontal wells in the same basin / bench for planning and benchmarking purposes.

This objective implies:
- oil is the primary stream
- analogs should have similar fluid character
- analogs should be from the same or comparable reservoir interval
- the output should be useful for planning, not just for describing one well

---

# 2. Example Analog Set Structure

## Example analog group
A realistic analog set might include 5–20 wells that are similar in:

- basin
- field / sub-area
- bench / landing zone
- fluid character
- completion style
- spacing context
- vintage

### Example analog set fields to document
| Well | Basin | Bench | Stream focus | Lateral length | First production | Notes |
|---|---|---|---|---|---|---|
| Well A | Delaware | Wolfcamp A | Oil | 10,000 ft | 2021 | clean |
| Well B | Delaware | Wolfcamp A | Oil | 10,200 ft | 2021 | clean |
| Well C | Delaware | Wolfcamp A | Oil | 9,800 ft | 2022 | moderate noise |
| Well D | Delaware | Wolfcamp A | Oil | 10,100 ft | 2022 | clean |
| Well E | Delaware | Wolfcamp A | Oil | 10,000 ft | 2022 | mild workover |

> [!note] This note is a process template
> The actual wells can be filled in later when a real type-well dataset is selected.

---

# 3. QC the Analog Set

Before combining wells, review each one for:

- bad months
- shut-ins
- workovers
- curtailments
- incomplete latest month
- odd allocation behavior
- stream anomalies

## Example QC actions
- exclude partial months from fitting if needed
- keep cumulative production if the production is real
- flag wells with severe distortion
- decide whether any wells should be removed entirely from the analog set

### Example QC table
| Well | QC status | Action |
|---|---|---|
| Well A | good | keep |
| Well B | good | keep |
| Well C | moderate noise | keep, but flag |
| Well D | good | keep |
| Well E | workover event | keep or exclude depending on objective |

Related note:
- [[DCA Diagnostic Toolkit]]

---

# 4. Choose the Stream Basis

For this example:
- build an **oil type well**

### Why
- oil is the primary planning stream
- gas can be reviewed separately later
- BOE will be used only as a summary layer if needed

> [!tip] Best practice
> If gas behavior matters materially, build a separate gas type well instead of forcing everything into BOE.

Related note:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 5. Normalize the Wells

## Example normalization
Normalize all rates and cumulative volumes to a common reference lateral length.

### Rate normalization
$$
q_{norm} = q \times \frac{L_{ref}}{L_{well}}
$$

### Cumulative normalization
$$
Q_{norm} = Q \times \frac{L_{ref}}{L_{well}}
$$

where:
- $L_{ref}$ = reference lateral length
- $L_{well}$ = actual lateral length of the well

### Example
If:
- reference lateral = 10,000 ft
- actual lateral = 12,000 ft
- observed oil rate = 1,200 BOPD

then:

$$
q_{norm}=1200 \times \frac{10000}{12000}=1000 \text{ BOPD}
$$

---

# 6. Align the Wells in Time

Choose a common alignment rule.

## Common options
- first production
- first full production month
- peak month

## Example choice
For unconventional type-well work, a common approach is:

> align wells at the **first full production month**  
or  
> align at **peak month**

### Why
This reduces distortion from startup and flowback effects.

---

# 7. Aggregate the Historical Profiles

Once the normalized wells are aligned, choose an aggregation method.

## Example aggregation choices
- arithmetic mean
- median
- percentile envelopes
- representative well

## Recommended example choice
Use:
- **median profile** as the base type well
- optional **P10 / P50 / P90 envelopes** for uncertainty

### Why
Median is often more robust to outliers than arithmetic mean.

---

## Example historical type-well table
| Month since alignment | Well A | Well B | Well C | Well D | Well E | Median Type Well |
|---|---:|---:|---:|---:|---:|---:|
| 1 | 1200 | 1100 | 1300 | 1150 | 1180 | 1180 |
| 2 | 980 | 930 | 1010 | 950 | 970 | 970 |
| 3 | 850 | 810 | 870 | 820 | 845 | 845 |
| ... | ... | ... | ... | ... | ... | ... |

> [!note] This table is illustrative
> In a real implementation, this would be generated from actual monthly data.

---

# 8. Diagnose the Historical Type Profile

Before forecasting the type well, treat the representative historical profile like a real well:

- examine decline shape
- examine flow-regime clues
- assess whether one or more segments are needed
- decide whether oil-only view is sufficient

Related notes:
- [[Flow Regime Identification for DCA]]
- [[Multi-Segment Forecasting Method]]

---

# 9. Forecast the Type Well

Now apply DCA to the representative historical type profile.

## Recommended methods
For unconventional oil type wells, compare:
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

## Example practical approach
- use **Modified Hyperbolic** as the baseline
- compare with one or two alternative methods
- define an uncertainty band from method spread

---

## Example assumptions
- economic limit: 10 BOPD
- terminal decline: 8%/yr tangent effective
- stream basis: oil
- fit start: first full production month or peak month
- normalization basis: 10,000 ft lateral

Related note:
- [[DCA Assumptions Library]]

---

# 10. QA/QC the Result

After building the type-well forecast, ask:

- does the historical type profile look representative?
- is the analog spread reasonable?
- does one outlier dominate the curve?
- do the forecast assumptions make sense?
- is the tail realistic?
- would I defend this type well to another engineer?

Use:
- [[Type Well QA-QC Checklist]]

---

# 11. Example Deliverables

A complete type-well package would ideally include:

## A. Analog summary table
- well names
- basin / bench
- stream character
- normalization basis
- QC status

## B. Historical normalized analog plot
- all wells
- median or mean type well

## C. Forecast plot
- type-well historical profile
- forecast segment(s)
- uncertainty envelope if available

## D. Assumptions note
- economic limit
- decline convention
- terminal decline
- segment choices
- alignment rule
- normalization rule

---

# 12. Common Failure Modes in Type Well Construction

> [!danger] Common failure modes
> - poor analog selection
> - inconsistent normalization
> - noisy wells averaged without QC
> - stream mismatch
> - overfitting the type-well forecast
> - no explanation of assumptions
> - presenting one curve with no uncertainty context

---

# 13. Minimal Type Well Template

A minimal practical type-well workflow can be summarized as:

```text
1. Pick analog set
2. QC the wells
3. Normalize rates and cum
4. Align time
5. Compute representative profile
6. Forecast with one or more methods
7. Document assumptions
8. Validate against spread and economics
```

---

# 14. How This Connects to the Rest of the Vault

This example sits on top of several foundation notes:

- [[Analog Selection Criteria by Basin - Bench]]
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[DCA Diagnostic Toolkit]]
- [[Multi-Segment Forecasting Method]]
- [[DCA Assumptions Library]]

Together, these notes form a complete type-well workflow system.

---

# 15. Bottom Line

> [!important] A type well is not just an average — it is a documented engineering construct.

A good type-well example should show:
- how wells were selected
- how they were normalized
- how they were aggregated
- how the forecast was built
- what assumptions were used
- how uncertainty was handled

That is what makes the result useful and defendable.

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[DCA Diagnostic Toolkit]]
- [[Multi-Segment Forecasting Method]]
- [[DCA Assumptions Library]]