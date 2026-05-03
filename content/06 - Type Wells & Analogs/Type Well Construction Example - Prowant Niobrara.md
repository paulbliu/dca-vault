

**Created:** 2026-04-29  
**Tags:** #example #type-well #dj-basin #niobrara #analogs #dca

## Purpose
This note provides a real type-well construction example for a **DJ Basin / Wattenberg / Niobrara** analog family.

It complements:
- [[Type Well Construction Example - Silvertip Wolfcamp]]

and gives a second basin-specific analog case outside the Permian.

This example demonstrates:
- analog set construction
- aligned historical profile development
- P50 aggregation
- Modified Hyperbolic forecasting
- cross-basin type-well thinking

---

## Analog Set Used

### Basin / Area
- **Asset:** DJ Basin
- **Field:** Wattenberg
- **Reservoir:** Niobrara
- **County:** Weld, Colorado

### Wells included
- PROWANT 18-11HZ NBRR
- PROWANT 18-1HZ NB-SR
- PROWANT 18-2HZ NBRR
- PROWANT 18-3HZ NBRR
- PROWANT 18-6HZ NBRR
- PROWANT 18-8HZ NBRR

### Why this is a good analog set
These wells are:
- same basin
- same field
- same broad Niobrara family
- same county
- same operator context
- same broad development vintage
- clearly more comparable to each other than to Permian wells

This makes them a useful DJ Basin analog family for a real type-well example.

---

## Methodology

### 1. Stream basis
This example is **oil-focused**.

### 2. Alignment
Each well was aligned at its **peak full oil month**.

### 3. Normalization
No lateral-length normalization was applied in this demonstration example.

> [!note]
> For a formal type-well workflow, lateral-length and completion normalization should still be considered explicitly.

### 4. Aggregation
The representative historical profile was built using:
- **P50 (median)** oil rate by aligned month
- **mean** shown as comparison
- **P10–P90 envelope** shown for analog spread

### 5. Forecasting method
The representative P50 historical type-well profile was forecast using:
- [[Modified Hyperbolic (Robertson)]]

### 6. Assumptions
- terminal decline: **8%/yr effective**
- economic limit: **20 BOPD**
- fit window: first 48 months where at least 4 wells remained in the analog set

---

## Visual Output

![[type_well_construction_example_prowant.png]]

### Plot layout
#### Top-left: aligned analog histories
- all analog wells after peak alignment
- P50 type well
- mean type well
- P10–P90 envelope

#### Top-right: P50 type-well forecast
- P50 historical profile
- Modified Hyperbolic forecast
- transition time
- economic limit

#### Bottom-left: cumulative type well
- historical cumulative
- forecast cumulative

#### Bottom-right: analog set context
- observed cumulative oil by analog well
- median cumulative context

---

## Key Observations

### 1. The analog family is tighter than many cross-basin sets
Because the analogs are all:
- same basin
- same field
- same reservoir family
- same vintage context

the historical type-well profile is more coherent than a loosely mixed analog set would be.

### 2. The DJ type well is lower-rate than a Delaware Wolfcamp type well
This is consistent with the broader pattern already visible in the case-study section:
- DJ Basin wells often show a more moderate oil-rate scale than top Delaware Wolfcamp wells
- the resulting type-well behavior is therefore basin-specific

### 3. Analog spread is still meaningful
Even within a relatively tight analog family, there is still noticeable spread.
That reinforces why:
- one analog well should not automatically become the type well
- P50 aggregation is often a better baseline

### 4. Modified Hyperbolic works well as a planning baseline
As in the Silvertip type-well example, Modified Hyperbolic provides a practical and explainable baseline forecast.

---

## Comparison to the Silvertip Type Well

| Topic | Silvertip Wolfcamp Type Well | Prowant Niobrara Type Well |
|---|---|---|
| Basin | Delaware | DJ Basin |
| Reservoir | Wolfcamp | Niobrara |
| Production style | higher-rate Permian unconventional | more moderate-rate DJ unconventional |
| Water context | Permian-style | lower-water DJ context |
| Planning value | Permian benchmark | DJ benchmark |

This gives the vault two real type-well examples from different basin contexts.

---

## Why This Example Is Valuable
This note turns the type-well workflow notes into something practical for a second basin.

It demonstrates:
- cross-basin type-well construction
- analog aggregation outside the Permian
- how basin context changes the representative profile
- why analog consistency matters

---

## Files
- ![[type_well_construction_example_prowant.png]]
- [[type_well_construction_example_prowant.xlsx]]

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
Each analog aligned by month index from peak month.

### 3. Type Well Aggregation
Median / mean / analog spread by aligned month.

### 4. Forecast Summary
Modified Hyperbolic fit parameters and transition metrics.

### 5. Forecast Curve
Forecast rates and cumulative production through time.

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Analog Selection Criteria by Basin - Bench]]
- [[Type Well Construction Example - Silvertip Wolfcamp]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[DCA Assumptions Library]]
- [[DCA Diagnostic Toolkit]]