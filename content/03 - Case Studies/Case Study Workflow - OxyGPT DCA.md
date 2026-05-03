
**Created:** 2026-04-29
**Tags:** #workflow #case-study #dca #oxygpt #methodology

## Purpose
This note documents the standard workflow used to generate decline-curve-analysis case studies in this vault using **OxyGPT**, Oxy internal production data, and Python-based forecasting.

The goal is to make each case study:
- **repeatable**
- **transparent**
- **comparable across wells**
- **linked back to theory notes**

This workflow is intended for:
- fast engineering screening
- method comparison
- personal learning
- building a reusable DCA pattern library

It is **not** a substitute for formal reserves governance, surveillance review, or full RTA.

---

## Core Idea
The workflow combines three things:

1. **Oxy internal production data**
2. **Python-based multi-method decline fitting**
3. **Obsidian documentation and linking**

Conceptually:

```text
Oxy ODS production data
1. OxyGPT SQL query
2. Python fitting / charting / export
3. Obsidian note + attachments
4. links back to DCA theory
```

---

## Tools Used

### 1. SQL Query Tool
Used to retrieve monthly production history from Oxy systems.

Typical sources:
- `OXYODS`
- `prodods.monthly_allocated_volumes`
- `mdmods.completion`

Purpose:
- identify candidate wells
- pull monthly oil / gas / water volumes
- retrieve well metadata (asset, field, reservoir, county, API)

### 2. Python Execution Tool
Used to analyze the production history in a sandboxed Python environment.

Purpose:
- clean and QC the data
- calculate rates from monthly volumes
- define fitting window
- fit multiple DCA methods
- calculate EUR
- generate PNG chart
- generate Excel workbook

### 3. User's Obsidian Vault
Used to store and organize the outputs after downloads.

Purpose:
- case study note
- embedded plot
- linked workbook
- backlinks to theory notes
- cross-case comparison

---

## Standard Workflow

### Step 1: Select a candidate well
A candidate well is usually chosen based on:
- sufficient production history
- representative basin / reservoir
- interesting production behavior
- need for contrast vs. existing cases

Examples:
- clean Delaware Wolfcamp oil well
- noisy Midland Spraberry oil well
- gas-rich Delaware well

---

### Step 2: Pull monthly production history
Use SQL to pull:
- production date
- oil volume
- gas volume
- water volume
- days producing
- hours producing
- well metadata

This typically comes from:
- `prodods.monthly_allocated_volumes`
- joined to `mdmods.completion`

---

### Step 3: QC the data
This is one of the most important steps.

Typical QC actions:
- remove zero-day producing months from rate fitting
- exclude obvious workover / shut-in / curtailment months
- exclude partial months if they distort rate calculations
- keep real production in cumulative totals even if excluded from fitting
- identify allocation / booking anomalies

Examples:
- 0 producing days but nonzero volume
- sudden single-month collapse then recovery
- partial month with very low hours producing

> [!warning] Key Principle
> Fit the **reservoir decline trend**, not the operational noise.

---

### Step 4: Convert monthly volumes to rates
Typical formulas:

#### Oil rate
$$
q_o = \frac{\text{monthly oil volume}}{\text{days producing}}
$$

#### Gas rate
$$
q_g = \frac{\text{monthly gas volume}}{\text{days producing}}
$$

If multi-stream:
- oil and gas may be analyzed separately
- GOR may be calculated for interpretation

---

### Step 5: Define the fitting reference point
Most case studies use:
- **peak producing month** as t = 0

Why:
- avoids startup ramp-up distortion
- standardizes comparison across wells
- aligns with DCA convention

For some wells, an alternative fit window may be used if:
- early completion cleanup dominates
- flowback period is abnormal
- only late-life BDF is of interest

---

### Step 6: Fit multiple DCA methods
Typical methods used in this vault:

- [[Arps Equations]] — Arps Hyperbolic
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

Why multiple methods?
- no single method is universally best
- comparison reveals uncertainty
- agreement across methods increases confidence
- disagreement highlights data or physics issues

---

### Step 7: Apply standard assumptions
Common assumptions used in case studies:

#### Oil-focused cases
- economic limit: **10 BOPD**
- terminal decline for constrained methods: **8%/yr effective**

#### Gas-focused cases
- economic limit: **500 MCFD**
- terminal decline for constrained methods: **10%/yr effective**

These are engineering screening assumptions, not formal reserves rules.

> [!note] Important
> Different assumptions will change EUR.
> In formal work, these assumptions should be aligned with asset / reserves guidance.

---

### Step 8: Generate outputs
The Python workflow generates:

#### A. PNG chart
Usually a 2x2 panel:
1. rate vs time (linear)
2. rate vs time (semi-log)
3. cumulative production
4. EUR by method

#### B. Excel workbook
Typically includes:
- fit summary
- production history
- forecast table
- metadata / assumptions

#### C. Markdown case study note
Summarizes:
- well context
- QC choices
- fitted methods
- engineering interpretation
- links to theory notes

---

### Step 9: Save into Obsidian
Typical placement:

```text
DCA Theory/
+-- 03 - Case Studies/
¦   +-- <case study note>.md
¦   +-- <results workbook>.xlsx
+-- Attachments/
    +-- <comparison chart>.png
```

Then embed / link inside the case study note:

```markdown
![[plot_name.png]]
[[results_workbook.xlsx]]
```

---

### Step 10: Link back to theory
Each case study should link to relevant theory notes such as:
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]
- [[b-factor interpretation]]
- [[Transient vs Boundary-Dominated Flow]]
- [[EUR Estimation]]
- [[Rate Transient Analysis (RTA)]]

This is what turns a case study into a learning tool instead of just a report.

---

## Deliverables Checklist

For each new case study:

- [ ] choose well
- [ ] pull production history
- [ ] QC and define fit window
- [ ] fit multiple DCA methods
- [ ] calculate EURs
- [ ] create PNG chart
- [ ] create XLSX workbook
- [ ] create markdown case study note
- [ ] move PNG into `Attachments/`
- [ ] move XLSX into `03 - Case Studies/` or `Attachments/`
- [ ] embed / link files in note
- [ ] link note to theory notes
- [ ] add note to [[Case Study Index]]

---

## Benefits of This Workflow

### 1. Speed
A complete multi-method case study can be produced quickly.

### 2. Consistency
All wells are analyzed with a comparable method set.

### 3. Transparency
QC choices and assumptions can be documented.

### 4. Learning value
Each case links real well behavior to theory.

### 5. Reusability
The workflow can be repeated for new wells, basins, or fluids.

---

## Limitations

> [!warning] This is a fast engineering workflow, not final reserves governance
> It is useful for:
> - screening
> - comparison
> - learning
> - initial forecasting
>
> It is not sufficient by itself for:
> - audited reserves
> - formal bookings
> - full surveillance decisions
> - detailed development planning

### Main limitations
- sensitive to QC choices
- sensitive to economic limit assumptions
- sensitive to terminal decline assumptions
- monthly allocated data may include operational / reporting artifacts
- DCA alone cannot replace pressure-based diagnostics
- multi-stream wells may require separate oil, gas, and BOE analysis

---

## When to Escalate Beyond This Workflow
Use a more rigorous workflow when:
- pressure data is available
- well is strategically important
- reserves governance requires stronger defensibility
- spacing / interference decisions are being made
- flow regime interpretation is ambiguous

That is where [[Rate Transient Analysis (RTA)]] and asset-specific surveillance workflows should be used.

---

## Recommended Extensions
Potential improvements to this workflow:
- separate oil vs gas vs BOE decline workflows
- standardized QC flags for workovers / downtime
- type-well aggregation across analog wells
- probabilistic EUR ranges (P10/P50/P90)
- comparison against RTA-derived parameters
- asset-specific Dmin assumptions

---

## Related Notes
- [[Case Study Index]]
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[EUR Estimation]]
- [[Rate Transient Analysis (RTA)]]