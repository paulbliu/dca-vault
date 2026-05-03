

**Created:** 2026-04-29  
**Tags:** #example #type-well #analogs #dca #workflow

## Purpose
This note provides a worked example of building a type well from a real analog set.

This example uses a small group of **Silvertip Wolfcamp wells in Loving County, Texas Delaware** to demonstrate:

1. analog selection  
2. alignment  
3. historical aggregation  
4. P50 type-well construction  
5. forecast fitting  
6. QA/QC logic  

It is a practical companion to:
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]

---

## Analog Set Used

### Basin / Area
- **Asset:** Texas Delaware
- **Field:** Phantom (Wolfcamp)
- **Reservoir:** Wolfcamp
- **County:** Loving

### Wells included
- SILVERTIP 76-16 UNIT Q 1H
- SILVERTIP 76-10 UNIT G 1H
- SILVERTIP 76-15 UNIT S 1H
- SILVERTIP 76-16 UNIT R 1H
- SILVERTIP 76-12 UNIT L 1H

### Why this is a reasonable analog set
These wells are:
- same basin
- same field
- same broad reservoir family
- same county
- same operator context
- similar unconventional oil development style

This makes them a good small analog set for a demonstration type well.

---

## Methodology

### 1. Stream basis
This example is **oil-focused**.

### 2. Alignment
Each well was aligned at its **peak full oil month**.

### 3. Normalization
No lateral-length normalization was applied in this example, because this is a same-family analog set intended as a simple demonstration.

> [!note]
> In a full type-well workflow, lateral-length normalization should be considered explicitly if lateral lengths differ materially.

### 4. Aggregation
The historical type well was built using:
- **P50 (median)** oil rate by aligned month
- **mean** shown as comparison
- **P10–P90 envelope** shown as analog spread

### 5. Forecasting method
A **Modified Hyperbolic** forecast was fit to the historical P50 type-well profile.

### 6. Assumptions
- terminal decline: **8%/yr effective**
- economic limit: **10 BOPD**
- fit window: first 48 months of representative history where at least 3 wells remained in the analog set

---

## Visual Output

![[type_well_construction_example.png]]

### What the plot shows
#### Top-left: aligned analog histories
- all analog wells aligned from peak month
- P50 type well
- mean type well
- P10–P90 envelope

#### Top-right: P50 type-well forecast
- historical P50 type curve
- Modified Hyperbolic fit
- transition to exponential tail
- economic limit line

#### Bottom-left: cumulative type well
- historical P50 cumulative
- forecast cumulative

#### Bottom-right: analog context
- observed cumulative oil per analog well
- median cumulative context line

---

## Key Takeaways

### 1. Median is a useful representative profile
The P50 type well provides a more stable benchmark than selecting one “representative” well arbitrarily.

### 2. Analog spread matters
The envelope shows that even a tight analog family has meaningful variability.

### 3. Type wells are not just averages
This example required:
- analog selection
- alignment
- aggregation choice
- forecast method choice
- assumption setting

### 4. Forecast assumptions still matter
Even after aggregation, the final type-well forecast depends heavily on:
- terminal decline
- economic limit
- fit window
- chosen decline method

---

## Why This Example Is Useful
This note demonstrates that a type well is a **constructed engineering object**, not just a curve average.

It shows the full logic from:
- analog family
- to representative history
- to practical forecast

---

## Files
- ![[type_well_construction_example.png]]
- [[type_well_construction_example.xlsx]]

---

## Workbook Contents
The workbook includes:

### 1. Analog Summary
Per-well context:
- peak month
- peak oil rate
- cumulative oil / gas / water
- WOR

### 2. Aligned Profiles
Each analog aligned in month index space from peak month.

### 3. Type Well Aggregation
Median / mean / spread by aligned month.

### 4. Forecast Summary
Modified Hyperbolic fit parameters and transition details.

### 5. Forecast Curve
Forecast rates and cumulative production through time.

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[Multi-Segment Forecasting Method]]
- [[DCA Diagnostic Toolkit]]
- [[DCA Assumptions Library]]