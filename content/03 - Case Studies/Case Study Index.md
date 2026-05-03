

**Created:** 2026-04-29
**Tags:** #index #case-study #dca #moc

## Purpose
This note is the **map of content** for the `03 - Case Studies/` folder.

It organizes real-well DCA examples by:
- basin
- reservoir
- dominant fluid
- data quality
- teaching value

Use this note to navigate from theory ? example.

---

## Workflow
Before reviewing individual cases, see:

- [[Case Study Workflow - OxyGPT DCA]]

---

## Comparison Notes
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]

---

## Current Case Studies

| Case Study | Basin / Asset | Reservoir | Primary Lens | Data Quality | Key Lesson |
|---|---|---|---|---|---|
| [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] | Texas Delaware | Wolfcamp | Oil | Clean | modern methods converge tightly on clean unconventional data |
| [[SOUTH CURTIS RANCH 401SP - DCA Comparison]] | Midland Basin | Middle Spraberry | Oil | Noisy | QC matters; workovers and downtime must be handled explicitly |
| [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]] | Texas Delaware | Wolfcamp | Gas | Moderate | gas-focused DCA, high GOR, multi-stream interpretation |
| [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]] | DJ Basin | Niobrara | Oil | Moderate-clean | lower-water cross-basin contrast; unconventional wells are not all “Permian-like” |

---

## By Learning Theme

### 1. Clean unconventional oil case
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]

Use when you want to see:
- clean monthly data
- strong agreement among modern methods
- classic Delaware Wolfcamp decline behavior
- why unconstrained Arps fails when b > 1

---

### 2. Noisy oil case with operational events
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

Use when you want to see:
- partial months
- shut-ins / workovers
- data exclusion logic
- longer history and emerging BDF behavior
- how operational noise widens EUR uncertainty

---

### 3. Gas-focused unconventional case
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

Use when you want to see:
- gas-rate fitting instead of oil-rate fitting
- gas-rich unconventional well behavior
- separate-stream thinking (gas vs oil)
- GOR-aware interpretation
- gas EUR in BCF instead of oil EUR in MBO

---

### 4. Lower-water cross-basin oil case
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

Use when you want to see:
- a **DJ Basin unconventional oil well** outside the Permian context
- **lower water burden** than typical Delaware/Midland oil cases
- a more moderate-rate, mature decline profile
- how basin context changes DCA interpretation
- why not all unconventional wells should be viewed through a Permian mental model

---

## By Basin

### Texas Delaware
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

### Midland Basin
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

### DJ Basin
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

---

## By Dominant Stream

### Oil-focused
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### Gas-focused
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

### Multi-stream awareness
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[Oil vs Gas vs BOE Decline Analysis]]

---

## By Theory Topic

### [[Arps Equations]]
All four cases show why unconstrained hyperbolic on unconventional wells can be misleading.

- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### [[Modified Hyperbolic (Robertson)]]
Best practical workhorse across all current cases.

- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### [[Duong Method]]
Especially relevant for transient-dominated unconventional data.

- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### [[Transient vs Boundary-Dominated Flow]]
Most visible in:
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] — transitional unconventional profile
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]] — later-life BDF more evident
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]] — mature lower-water oil decline outside Permian

### Stream-level analysis
Most visible in:
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[Oil vs Gas vs BOE Decline Analysis]]

### Cross-basin interpretation
Most visible in:
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

---

## Quick Comparison Summary

| Metric | SILVERTIP | SOUTH CURTIS RANCH | CHERRY STATE | PROWANT |
|---|---|---|---|---|
| Main product | Oil | Oil | Gas-rich / multi-stream | Oil |
| History length | Medium | Long | Medium | Medium |
| Data cleanliness | High | Low-Medium | Medium | Medium-clean |
| Best use in learning | benchmark oil case | QC and operational filtering | gas-centric DCA | lower-water cross-basin comparison |
| Method spread | tight | moderate | moderate | moderate |
| Engineering focus | unconventional oil forecasting | noisy data handling | gas EUR and stream separation | cross-basin oil decline behavior |

---

## Recommended Reading Order

If learning DCA from scratch:

1. [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
2. [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
3. [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
4. [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

Why this order:
- start with the cleanest oil case
- then see what messy real data looks like
- then extend to gas-focused analysis
- then broaden your mental model with a non-Permian, lower-water basin contrast

---

## Suggested Reading Paths

### Path 1: Learn unconventional oil DCA
1. [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
2. [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
3. [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### Path 2: Learn stream-specific analysis
1. [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
2. [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
3. [[Oil vs Gas vs BOE Decline Analysis]]

### Path 3: Learn cross-basin thinking
1. [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
2. [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
3. [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]
4. [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]

### Path 4: Learn the case-study workflow
1. [[Case Study Workflow - OxyGPT DCA]]
2. [[Case Study Index]]
3. [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
4. one or more case studies

---

## Next Cases to Add
Ideas for future expansion:

- [ ] dry-gas unconventional well
- [ ] conventional vertical well in clear BDF
- [ ] waterflood / EOR case
- [ ] parent-child interaction case
- [ ] type-well aggregation case
- [ ] oil vs gas vs BOE comparison on the same well
- [ ] another non-Permian basin case for broader benchmarking

---

## Related Notes
- [[Case Study Workflow - OxyGPT DCA]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[Arps Equations]]
- [[EUR Estimation]]
- [[Rate Transient Analysis (RTA)]]

## Related Workflow Systems
For multi-well representative forecasting and analog workflows, see:
- [[Type Well Index]]
