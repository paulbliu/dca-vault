

**Created:** 2026-04-29
**Tags:** #guide #dca #decision-making #workflow #moc

## Purpose
This note helps decide **which decline analysis method to use** based on:

- well type
- flow regime
- data quality
- dominant stream
- basin context
- analysis objective

It is designed to connect the theory notes in `01 - Concepts/` with the case studies in `03 - Case Studies/`.

---

## Core Question
When starting decline analysis, ask:

> [!question] What kind of well and data do I have?
> - conventional or unconventional?
> - oil-focused or gas-focused?
> - clean or noisy?
> - transient or boundary-dominated?
> - screening or rigorous characterization?

The correct method depends on the answers.

---

## Fast Decision Tree

```text
Start
¦
+- Is the well conventional and clearly in BDF?
¦  +- Yes ? Use Arps
¦
+- Is the well unconventional?
¦  +- Yes
¦     ¦
¦     +- Is the data clean and history sufficient?
¦     ¦  +- Yes → Compare Modified Hyperbolic, Duong, SEPD, PLE
¦     ¦
¦     +- Is the data noisy / operationally interrupted?
¦     ¦  +- Yes → QC first, then fit modern methods
¦     ¦
¦     +- Is the well gas-rich?
¦     ¦  +- Yes → fit gas separately
¦     ¦
¦     +- Is the well oil-dominant?
¦     ¦  +- Yes → fit oil separately
¦     ¦
¦     +- Are both streams material?
¦     ¦  +- Yes → fit oil + gas separately, BOE second
¦     ¦
¦     +- Do you need reservoir properties / stronger physics?
¦        +- Yes → escalate to RTA
¦
+- Are you only doing high-level screening?
   +- Yes → simpler workflow acceptable, but document limitations
```

---

## Method Selection by Situation

## 1. Conventional Well in Clear Boundary-Dominated Flow
### Recommended method
- [[Arps Equations]]

### Why
Arps was built for this setting:
- stable BDF
- depletion-driven decline
- conventional reservoir behavior

### Best Arps variants
- [[Exponential Decline]] for conservative cases
- [[Hyperbolic Decline]] when justified by drive mechanism
- [[Harmonic Decline]] only with strong justification

### Use when
- mature conventional oil or gas well
- vertical well with clear late-life decline
- strong evidence transient flow is over

### Escalate if
- pressure/rate physics matter
- you need k, skin, drainage area
- reservoir characterization matters

Then use:
- [[Fetkovich Type Curves]]
- [[Rate Transient Analysis (RTA)]]

---

## 2. Unconventional Oil Well, Clean Data
### Recommended first-pass methods
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

### Why
Modern unconventional wells often spend long periods in transient flow, so pure Arps is usually unsafe without constraints.

### Best case study
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]

### Practical guidance
If the well is:
- oil-rich
- reasonably clean
- has enough history
- and you want a strong working estimate

then:
1. fit multiple modern methods
2. compare EUR spread
3. treat agreement as confidence

> [!tip] Best practice
> Use **Modified Hyperbolic as the workhorse**, then compare against Duong, SEPD, and PLE.

---

## 3. Unconventional Oil Well, Noisy / Operationally Interrupted Data
### Recommended workflow
- QC first
- then use:
  - [[Modified Hyperbolic (Robertson)]]
  - [[SEPD]]
  - [[PLE]]
  - optionally [[Duong Method]]

### Why
Noisy data can distort all fits. The first decision is not the decline model — it is the **fit window**.

### Best case study
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

### Typical issues
- partial months
- workovers
- shut-ins
- curtailment
- reporting anomalies

> [!warning] Important
> If the data is noisy, method choice matters less than **good QC**.

---

## 4. Gas-Rich Well or Gas-Focused Analysis
### Recommended workflow
- fit **gas separately**
- compare:
  - [[Modified Hyperbolic (Robertson)]]
  - [[Duong Method]]
  - [[Stretched Exponential (SEPD)]]
  - [[Power Law Exponential]]

### Why
Gas-dominant wells should not automatically be analyzed through an oil lens or only through BOE.

### Best case study
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

### Use when
- gas dominates BOE
- GOR is high
- gas economics matter materially
- gas facilities / gas reserves matter

### Related note
- [[Oil vs Gas vs BOE Decline Analysis]]

---

## 5. Lower-Water Cross-Basin Unconventional Oil Well
### Recommended workflow
- oil-focused modern method comparison
- compare against Permian mental models, don’t assume the same behavior

### Why
A lower-water unconventional well can look operationally and economically different from a Permian case even if the mathematical methods are the same.

### Best case study
- [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]]

### Use when
- you want a non-Permian unconventional contrast
- basin context matters
- you want to benchmark how water burden changes the interpretation

---

## 6. Need the Simplest Practical Workhorse
### Recommended method
- [[Modified Hyperbolic (Robertson)]]

### Why
If you can choose only one modern unconventional method for day-to-day use, this is usually the best default:
- familiar to engineers
- easy to explain
- bounded EUR when Dmin is applied
- practical for reserves and surveillance workflows

### Caveat
It still requires:
- justified Dmin
- reasonable fit window
- awareness of transient flow

---

## 7. Strong Linear-Flow Signature
### Recommended method
- [[Duong Method]]

### Why
Duong is especially useful when:
- transient linear flow dominates
- q/Np vs t behavior is consistent
- well is classic shale-style fractured production

### Best for
- unconventional wells with prolonged linear flow
- comparison against Arps-style methods

### Caveat
Can be less intuitive for stakeholders unfamiliar with it.

---

## 8. Distributed / Long-Tail Behavior
### Recommended method
- [[Stretched Exponential (SEPD)]]

### Why
SEPD is strong when:
- the well appears to have a broad distribution of drainage timescales
- you want a bounded EUR without an arbitrary switch
- you want a mathematically elegant long-tail model

### Caveat
Less intuitive than Arps-derived methods.

---

## 9. Smooth Transient-to-Tail Transition
### Recommended method
- [[Power Law Exponential]]

### Why
PLE is useful when:
- you want a smooth decline form
- you want transient + tail behavior in one model
- you want an alternative to Modified Hyperbolic

### Caveat
More parameters, more fitting sensitivity.

---

## 10. Need Reservoir Properties, Not Just a Forecast
### Recommended method
- [[Rate Transient Analysis (RTA)]]

### Why
Use RTA when you need:
- permeability
- fracture interpretation
- drainage area
- stronger physical justification
- more rigorous characterization

### Use when
- well is important
- pressure data exists
- spacing / development decisions matter
- formal defensibility matters

### Related
- [[Fetkovich Type Curves]]
- [[Rate Transient Analysis (RTA)]]

> [!tip] Summary
> DCA answers: **what will the rate be?**
> RTA answers: **what is the reservoir doing?**

---

## Selection by Objective

## Objective: quick screening
### Use
- simplified DCA
- often [[Modified Hyperbolic (Robertson)]]
- possibly BOE for quick ranking

### Avoid
- over-interpreting the result
- pretending a quick screen is a rigorous reserves answer

---

## Objective: learning / comparison
### Use
- multiple methods
- case-study workflow
- stream-level comparison

### Best notes
- [[Case Study Workflow - OxyGPT DCA]]
- [[Case Study Index]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]

---

## Objective: reserves-style working estimate
### Use
- [[Modified Hyperbolic (Robertson)]]
- plus comparison with Duong / SEPD / PLE
- explicit economic limit
- explicit terminal decline assumption

---

## Objective: physics / surveillance / development
### Use
- [[Rate Transient Analysis (RTA)]]
- optionally use DCA as the forecasting layer after RTA interpretation

---

## Selection by Data Quality

| Data condition | Recommended approach |
|---|---|
| clean monthly history | compare multiple modern methods |
| noisy history with workovers | QC first, then fit |
| short history | prefer cautious interpretation; compare methods, don’t over-commit |
| long mature history | consider whether BDF is emerging; Arps may become more meaningful |
| strong gas/oil divergence | separate stream fits |
| obvious pressure/flow questions | escalate to RTA |

---

## Selection by Stream

| Stream situation | Recommended choice |
|---|---|
| oil-dominant well | fit oil |
| gas-dominant well | fit gas |
| multi-stream with changing GOR | fit oil + gas separately |
| high-level screening only | BOE acceptable with caution |

See:
- [[Oil vs Gas vs BOE Decline Analysis]]

---

## Selection by Case Study Example

| If your well looks like... | Start with... |
|---|---|
| clean Delaware Wolfcamp oil well | [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] |
| noisy mature oil well with interruptions | [[SOUTH CURTIS RANCH 401SP - DCA Comparison]] |
| gas-rich unconventional well | [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]] |
| lower-water non-Permian unconventional oil well | [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]] |

---

## Practical Default Recommendations

> [!tip] If unsure, start here
> **Default unconventional oil workflow**
> 1. QC the data
> 2. Fit [[Modified Hyperbolic (Robertson)]]
> 3. Compare with [[Duong Method]], [[SEPD]], and [[PLE]]
> 4. Examine stream mix
> 5. Document assumptions
> 6. Escalate to [[Rate Transient Analysis (RTA)]] if needed

---

## What Not to Do

> [!danger] Common mistakes
> - using unconstrained Arps on unconventional wells and trusting the result
> - fitting noisy operational months without QC
> - fitting BOE only when stream mix is changing
> - assuming every unconventional well behaves like a Delaware Wolfcamp well
> - using one method only and hiding uncertainty
> - treating quick screening as formal reserves work

---

## Suggested Workflow Order
For most real work:

```text
1. Decide stream: oil, gas, or both
2. QC the data
3. Identify likely flow regime
4. Choose initial method
5. Compare against at least one alternative
6. Review uncertainty / spread
7. Escalate to RTA if higher rigor is needed
```

---

## Related Notes
- [[Case Study Workflow - OxyGPT DCA]]
- [[Case Study Index]]
- [[Cross-Basin DCA Comparison - Delaware vs Midland vs DJ]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]
- [[Rate Transient Analysis (RTA)]]


✅ ❌ ✔ ✖
→ ← ↑ ↓ ⇒ ⇔ ↗ ↘
≈ ± ≤ ≥ α β γ Δ