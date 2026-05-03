

**Created:** 2026-04-29  
**Tags:** #workflow #analogs #type-well #basin #bench #screening

## Purpose
This note provides a practical framework for selecting analog wells by:
- basin
- field / area
- bench / reservoir
- stream character
- completion style
- operating context

It is intended to support:
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[DCA Method Selection Guide]]

The goal is to make analog selection:
- more repeatable
- more defendable
- less arbitrary
- more consistent across future case studies and type-well work

---

## Core Principle

> [!important] The analog set is usually more important than the decline equation.
> A poor analog set will produce a poor type well even if the decline fitting is mathematically correct.

Analog selection should be driven by:
1. **reservoir comparability**
2. **fluid comparability**
3. **completion comparability**
4. **operational comparability**
5. **forecasting objective**

---

# 1. Start with the Question

Before selecting analogs, define the purpose.

## Common questions
- What is the representative well for this bench?
- What should the planning type well be for this area?
- What is the expected gas-rich type well?
- What is the appropriate analog set for a lower-water basin case?
- What wells should be compared to a new completion design?

### Why this matters
Different questions require different analog sets.

A type well for:
- **planning**
may differ from a type well for:
- **reserves**
or:
- **technical benchmarking**

---

# 2. Primary Analog Selection Dimensions

The main dimensions to consider are:

## A. Basin
Examples:
- Delaware Basin
- Midland Basin
- DJ Basin

## B. Field / sub-area
Examples:
- Phantom
- Wattenberg
- Spraberry Trend Area

## C. Bench / reservoir / landing zone
Examples:
- Wolfcamp A
- Wolfcamp XY
- Middle Spraberry
- Niobrara

## D. Dominant stream
Examples:
- oil-dominant
- gas-rich
- multi-stream

## E. Completion style
Examples:
- lateral length
- stages
- proppant intensity
- fluid intensity
- vintage / generation of design

## F. Operational context
Examples:
- parent vs child
- spacing / interference context
- artificial lift style
- curtailed vs unconstrained wells

---

# 3. Basin-Level Criteria

## Delaware Basin analog rules

### Typical characteristics
- high-rate unconventional oil and gas wells
- stronger transient behavior
- large hydrocarbon volumes
- often higher water burden than DJ
- broad range of gas-rich and oil-rich outcomes

### Good analog filters
- same asset / area where possible
- same landing zone / bench
- similar GOR character
- similar completion style and vintage
- similar parent-child condition
- similar water-handling context if economics matter

### Avoid mixing with:
- Midland or DJ wells unless explicitly doing cross-basin benchmarking

### Related cases
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

---

## Midland Basin analog rules

### Typical characteristics
- lower or more moderate production scale than top Delaware examples in many cases
- strong oil cases
- operational history may be noisy depending on field maturity and operating style
- more mixed maturity behavior depending on area

### Good analog filters
- same bench / landing interval
- similar fluid character
- similar completion era
- similar noise / operational environment
- similar development phase

### Important caution
Do not assume Midland analogs are interchangeable with Delaware analogs just because both are Permian unconventional wells.

### Related case
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

---

## DJ Basin analog rules

### Typical characteristics
- often more moderate oil-rate scale
- lower water burden in some cases relative to Permian examples
- different fluid and operating context
- different economic and late-life behavior

### Good analog filters
- same field / Wattenberg area if possible
- same Niobrara / Codell / similar target interval
- similar completion generation
- similar stream character
- similar maturity level

### Important caution
DJ analogs should generally **not** be mixed into Permian type wells unless the purpose is explicitly cross-basin comparison.

### Related case
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

---

# 4. Bench / Reservoir-Level Criteria

Bench / reservoir is usually more important than broad basin label alone.

## Good analog rule
Prefer:
- same landing zone
- same bench
- same reservoir code
- same stacked-pay target style

## Why
Even within the same basin:
- Wolfcamp A ≠  Wolfcamp XY
- Middle Spraberry ≠  Lower Spraberry
- Niobrara ≠  Codell

These differences can materially affect:
- IP rates
- GOR
- water burden
- decline shape
- EUR

---

# 5. Stream Character Criteria

## Oil-dominant wells
Use analogs with:
- similar oil dominance
- comparable GOR behavior
- similar late-life oil performance

## Gas-rich wells
Use analogs with:
- similar gas richness
- similar GOR evolution
- similar gas handling / facility context

## Multi-stream wells
If both streams matter:
- maintain analog consistency on both oil and gas behavior
- avoid mixing strongly gas-rich wells with strongly oil-dominant wells without explicit reason

Related note:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

# 6. Completion Style Criteria

Analogs should be screened for comparable completion design.

## Useful variables
- lateral length
- stage count
- stage spacing
- proppant per foot
- fluid per foot
- completion vintage
- frac design generation

## Why
Type wells can be badly distorted if you mix:
- short laterals with long laterals
- legacy completions with modern completions
- light frac jobs with aggressive modern designs

## Practical rule
If completion style differs a lot, either:
- normalize carefully
- or split the analog population

---

# 7. Vintage Criteria

Completion year matters.

## Why
Vintage affects:
- completion design
- operating practices
- spacing philosophy
- parent-child interaction exposure
- commodity environment
- surveillance maturity

## Practical rule
If possible, keep analogs within a similar development generation.

Examples:
- early shale generation
- modern cube-development generation
- post-child-interference learning phase

---

# 8. Parent-Child / Spacing Context

Two wells in the same bench may still not be good analogs if spacing / depletion context differs.

## Screen for:
- parent well vs child well
- infill timing
- depletion state
- offset interference
- pad-development style

## Why
These strongly affect:
- initial rates
- pressure support
- decline behavior
- long-term reserves

---

# 9. Maturity / History-Length Criteria

Not all wells should be used equally.

## Good analog practice
Think about whether you want:
- early-life wells
- mature wells
- a blend
- only wells with enough history to stabilize

## Why
Short-history wells are useful for:
- current development style
- recent completion performance

Long-history wells are useful for:
- tail behavior
- terminal decline realism
- mature economic context

## Practical rule
Be explicit:
- “analogs must have at least 24 months”
- or “at least 36 months”
- or “must include some mature wells for tail calibration”

---

# 10. Data Quality Criteria

An analog set should not include wells with severe distortions unless that is intentional.

## Exclude or flag wells with:
- chronic shut-ins
- severe workovers
- major reporting anomalies
- highly incomplete histories
- obvious artificial-lift discontinuities
- allocation problems

## Use with caution
Wells may still be useful as analogs if:
- distortions are minor
- clean intervals can be isolated
- the purpose is operational benchmarking rather than pure type-well construction

Related note:
- [[DCA Diagnostic Toolkit]]

---

# 11. Water-Burden Criteria

Water is often ignored too early in analog selection.

## Include water-burden thinking when:
- late-life economics matter
- comparing basins
- evaluating abandonment behavior
- comparing “clean” vs “burdened” wells

## Why
Water affects:
- OpEx
- abandonment timing
- apparent economic EUR
- stream quality
- lift burden

### Example from vault
- DJ lower-water analogs should not be casually mixed with higher-water Permian wells

---

# 12. Analog Selection Tiers

A useful way to organize analog quality is by tiers.

## Tier 1 — strongest analogs
Same:
- basin
- field / area
- bench
- fluid character
- completion generation
- spacing context

## Tier 2 — acceptable analogs
Close, but with one mild difference:
- neighboring area
- slightly different completion intensity
- slightly different vintage

## Tier 3 — weak analogs
Useful for context only, not core type-well construction:
- different basin
- different bench
- significantly different stream behavior
- clearly different completion style

> [!tip] Best practice
> Build the type well primarily from Tier 1 wells.
> Use Tier 2 wells as support.
> Use Tier 3 wells only for context or sensitivity.

---

# 13. Suggested Analog Selection Workflow

```text
1. Define the objective
2. Screen by basin
3. Screen by field / area
4. Screen by bench / reservoir
5. Screen by stream character
6. Screen by completion style and vintage
7. Screen by spacing / interference context
8. Screen by history length
9. QC the candidate set
10. Rank analogs by strength (Tier 1 / 2 / 3)
```

---

# 14. Common Mistakes

> [!danger] Common analog-selection mistakes
> 1. using geographic proximity alone
> 2. mixing different benches casually
> 3. mixing oil-rich and gas-rich wells without stream logic
> 4. ignoring completion vintage
> 5. ignoring parent-child context
> 6. ignoring water burden
> 7. normalizing everything and assuming that solves comparability
> 8. keeping bad-quality wells in the set without justification

---

# 15. Practical Questions to Ask Before Finalizing an Analog Set

- Are these wells truly comparable geologically?
- Are they comparable in stream character?
- Are they comparable in completion style?
- Are they comparable in maturity?
- Are they comparable in operating context?
- Would I be comfortable defending these wells as analogs to another engineer?
- If one well clearly under- or over-performs, do I understand why?

---

# 16. Suggested Use with This Vault

Use this note together with:
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[DCA Diagnostic Toolkit]]

---

# 17. Bottom Line

> [!important] Analog selection is a technical screening process, not a convenience step.

A good analog set should be:
- geologically defensible
- operationally comparable
- stream-consistent
- QC’d
- aligned with the purpose of the type well

If the analog set is weak, the type well will be weak no matter how elegant the forecast fit looks.

---

## Related Notes
- [[Type Well - Analog Workflow]]
- [[Type Well QA-QC Checklist]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[DCA Diagnostic Toolkit]]
- [[Case Study Index]]