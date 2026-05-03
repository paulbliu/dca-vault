
**Created:** 2026-04-29
**Tags:** #working-notes #rnfd #dca #paper-review #unconventional #flow-regime

## Purpose
This note captures working notes for the paper:

- [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]]

This is a technical digestion note for understanding the proposed **rate-normalized flow rate derivative (RNFD)** method before deciding whether it deserves promotion to a full concept note.

---

## Paper
Al-Rbeawi, S., & Owayed, J. (2025).  
**New approach for decline curve analysis of unconventional fractured reservoirs: Rate-normalized flow rate derivative concept**.  
*Petroleum Research*, 10(4), 837–853.  
DOI: 10.1016/j.ptlrs.2025.02.003

---

## Current Status
> [!note] Status
> This method is under review.
> It looks promising conceptually, especially because it is flow-regime-aware, but it is not yet adopted as a standard workflow in this vault.

---

# Section 1 — Core Idea

## Main objective of the method
The paper explicitly says the RNFD technique is developed to **eliminate the non-linear behavior of production rate vs. production time** and transform it into a behavior that is easier to use for forecasting.

### Working interpretation
This is a key conceptual point:

- unconventional fractured-well production histories are strongly non-linear
- multiple flow regimes appear through time
- traditional DCA struggles because those regime changes distort simple decline-curve fitting
- RNFD is intended to turn that complex behavior into a more linear/constant diagnostic form

So the RNFD method is really trying to do two things at once:
1. **diagnose flow regime**
2. **enable forecasting**

---

# Section 2 — Flow-Regime Framework Used in the Paper

The paper assumes four main flow regimes in unconventional hydraulically fractured reservoirs:

## 1. Hydraulic fracture linear flow (HFLF)
- early flow inside the hydraulic fractures
- log-log slope of rate vs time: **-0.5**

## 2. Bilinear flow (BLF)
- simultaneous flow from SRV to fractures, then to wellbore
- log-log slope of rate vs time: **-0.25**

## 3. Formation linear flow (FLF)
- flow from unstimulated to stimulated reservoir volume
- log-log slope of rate vs time: **-0.5**

## 4. Boundary-dominated flow (BDF)
- late-time boundary response
- log-log slope of rate vs time: **-1.0**

### Important note
The paper emphasizes that the BDF regime may never appear in some unconventional reservoirs because transient flow can dominate for most of the well life.

---

# Section 3 — Analytical Flow Models Behind RNFD

The RNFD method is derived from analytical power-law flow models for each flow regime.

## HFLF rate model
$$
q_D = C t_D^{-1/2}
$$

## BLF rate model
$$
q_D = C t_D^{-1/4}
$$

## FLF rate model
$$
q_D = C t_D^{-1/2}
$$

## BDF rate model
The BDF model is written differently in the paper, but the important point is that it leads to an RNFD value of 1.0.

### Working interpretation
The RNFD is not arbitrary — it is derived from these power-law forms. That is the physical basis for why the diagnostic is supposed to be constant within each flow regime.

---

# Section 4 — RNFD Definition


The paper defines the rate-normalized flow rate derivative (RNFD) as:

$$
RNFD = \frac{1}{q_D}(t_D q_D') = \frac{1}{q}(t q')
$$

where:
- \(q_D\) = dimensionless flow rate
- \(t_D\) = dimensionless time
- \(q_D'\) = derivative of dimensionless flow rate
- \(q\) = real-time flow rate
- \(t\) = real-time production time
- \(q'\) = derivative of flow rate with respect to time

## Important notation note
The symbol between \(t\) and \(q'\) in the paper is **multiplication**, not the letter x.

So:

$$
(t q')
$$

means:

$$
t \times q'
$$

not a separate variable.

## Simplified interpretation
RNFD is the **flow-rate derivative normalized by the flow rate itself**, with time included as a scaling factor:

$$
RNFD = \frac{t q'}{q}
$$

This is essentially a rate-normalized derivative quantity.

---

## Why this form is important
If the production rate follows a power-law decline:

$$
q \propto t^{-n}
$$

then:

$$
q' \propto -n t^{-n-1}
$$

so:

$$
\frac{t q'}{q} = -n
$$

That means RNFD becomes a **constant** for any power-law flow regime.

This is the mathematical reason the paper can use RNFD as a flow-regime diagnostic.

---

## Flow-regime interpretation from the paper
The paper derives constant RNFD values for the major flow regimes:

| Flow regime | RNFD value |
|---|---|
| HFLF | 0.5 (magnitude) |
| BLF | 0.25 (magnitude) |
| FLF | 0.5 (magnitude) |
| BDF | 1.0 (magnitude) |

## Important sign question
Because a declining production rate has:

$$
q' < 0
$$

the signed quantity:

$$
\frac{t q'}{q}
$$

should mathematically be **negative**.

So one important thing to verify in the paper is whether the authors are:
- reporting the **absolute value**
- using a sign convention that suppresses the negative sign
- or discussing only the magnitude of RNFD

For practical interpretation, the paper appears to use the **magnitude/pattern**:
- 0.25
- 0.5
- 1.0

---

## Practical interpretation
The RNFD behaves like a **power-law slope diagnostic**:
- if RNFD magnitude is near **0.25**, the well may be in bilinear flow
- if RNFD magnitude is near **0.5**, the well may be in hydraulic-fracture linear flow or formation linear flow
- if RNFD magnitude is near **1.0**, the well may be in boundary-dominated flow

## Limitation already visible
RNFD alone does **not fully distinguish HFLF from FLF**, because both correspond to a magnitude of **0.5**.

So the paper still requires:
- log-log slope review of the production-rate curve
- regime sequencing logic
- interpretation of transition timing
### Implication
This is why RNFD can act as a flow-regime diagnostic:
- HFLF / FLF → about 0.5 in magnitude
- BLF → about 0.25 in magnitude
- BDF → about 1.0 in magnitude

### Important follow-up question
Check whether the paper uses:
- signed RNFD
- absolute-value RNFD
- or a sign convention that reports only positive magnitudes

### Important point
The paper uses a numerical derivative form based on **three adjacent production points** to estimate the flow-rate derivative.

### Working interpretation
RNFD is essentially a **rate-normalized derivative diagnostic**.  
Its purpose is similar in spirit to:
- pressure derivative diagnostics in PTA/RTA
- beta-derivative ideas
- Duong's q/Np-based unconventional diagnostic

but here the key diagnostic signature is **constant RNFD by regime**.

---

# Section 5 — Constant RNFD Values by Flow Regime

This is one of the most important contributions in the paper.

The paper derives constant RNFD values for the four flow regimes:

| Flow regime | RNFD value |
|---|---|
| HFLF | **0.5** |
| BLF | **0.25** |
| FLF | **0.5** |
| BDF | **1.0** |

## Working interpretation
This means that when RNFD is plotted versus time:
- each regime appears as a **horizontal line**
- the level of that line identifies the regime

### Immediate implication
This gives a regime-identification scheme:
- RNFD ˜ 0.25 → bilinear flow
- RNFD ˜ 0.5 → hydraulic-fracture linear or formation linear flow
- RNFD ˜ 1.0 → BDF

### Important limitation already visible
HFLF and FLF both map to **0.5**, so RNFD alone does not distinguish them.  
The paper still relies on the **rate-vs-time log-log slope and sequence of regime development** to interpret the regime correctly.

---

# Section 6 — Numerical Flow-Rate Derivative

The paper introduces a numerical solution for the flow-rate derivative using **three production times and three corresponding flow rates**.

## Working interpretation
This is likely one of the most critical parts of the whole method because:
- raw derivatives of field data are noisy
- monthly production data are irregular and operationally disturbed
- the success of RNFD depends on whether this derivative formula is stable

### What we know so far
- it uses three points
- it is intended as a noise-reducing derivative model
- it is used both to compute RNFD and to support forecasting

### What still needs to be done
- copy the exact derivative equation into this note
- understand whether it behaves like a central finite-difference in log-time
- determine how sensitive it is to operational noise

---

# Section 7 — Forecast Equation Logic

The paper proposes a forecasting equation based on:
- the RNFD value for the active flow regime
- the last two flow rates
- the last two production times
- a correction factor when regime slope changes

## Key conceptual point
Instead of fitting a global decline curve directly, the method:
1. identifies the active flow regime
2. uses its RNFD constant
3. propagates future rate through a derivative-based recurrence formula

### Working interpretation
This is more like a **stepwise simulation / recurrence forecasting method** than a single closed-form decline curve like Arps or SEPD.

That makes the method more diagnostic and regime-aware, but also potentially more cumbersome operationally.

---

# Section 8 — Correction Factor

The paper introduces a correction factor **ß** to handle changes in slope when moving between flow regimes.

## Correction factors stated in the paper
- **ß = 3.0** when moving between:
  - HFLF → BLF
  - BLF → FLF
- **ß = 1.5** when moving into BDF

### Working interpretation
This correction factor is a practical adjustment used when the regime slope changes at an intersection point.

This is important because it means the method is **not purely plug-and-play from RNFD alone**.  
It still requires:
- identifying regime transitions
- applying regime-specific correction logic

---

# Section 9 — Sequential Workflow Proposed by the Paper

The paper gives a step-by-step procedure. Condensed version:

1. Plot **production rate vs time** on log-log scale
2. Identify dominant flow regimes from slope
3. Estimate start/end times of each regime from intersection points
4. Compute RNFD for each production time
5. Plot RNFD vs time and verify constant horizontal lines
6. Use first two rates/times plus RNFD to calculate subsequent rates
7. Apply correction factor at regime changes
8. Continue calculations across the full history
9. Use the last observed regime and recurrence formula for forecasting
10. Continue until abandonment rate
11. Compare simulated vs observed rate
12. Compare simulated vs observed RNFD
13. Calculate cumulative production and EUR

## Working interpretation
This is a **workflow-heavy method**, not just an equation.

It depends critically on:
- slope interpretation
- regime boundaries
- correction-factor application
- derivative stability

That makes it more physically aware, but also more operator-dependent than standard DCA.

---

# Section 10 — Skin-Factor Treatment

This is one of the most distinctive features of the paper.

## Main claim
The constant RNFD behavior assumes **no skin-factor impact**.

When skin is significant:
- RNFD is no longer constant
- instead, it becomes a **straight line with positive slope in time**
- this effect is most visible at early time
- it is especially associated with HFLF and BLF
- it is uncommon during late BDF

## Paper’s interpretation
- skin lowers flow rate
- this shifts RNFD downward
- severe skin produces a linear relationship rather than a horizontal constant RNFD

### Working interpretation
This is genuinely interesting because it gives the RNFD method a way to interpret early-time departure from the ideal constant-regime behavior.

This could be a practical strength compared with simpler decline methods, which often just absorb that behavior into bad fit parameters.

### Open question
Need to copy the exact skin-factor RNFD equations into this note and understand whether they are practically implementable on noisy field data.

---

# Section 11 — What the Paper Seems Strongest At

## 1. Flow-regime-aware forecasting
The method explicitly ties forecasting to identified regimes.

## 2. Unified diagnostic + forecasting logic
It does not separate diagnosis and forecast as sharply as many workflows do.

## 3. Skin-factor awareness
This is a differentiator from many common DCA methods.

## 4. Explicit transition handling
The correction-factor logic is designed to navigate regime changes.

---

# Section 12 — What Looks Potentially Weak / Difficult

## 1. Operational complexity
Compared with Modified Hyperbolic or SEPD, this is much more workflow-intensive.

## 2. Dependence on slope interpretation
The method still needs the user to identify flow-regime slopes and transition points.

## 3. Derivative sensitivity
Even with noise-reducing logic, production derivatives are always vulnerable to noisy data.

## 4. Ambiguity between HFLF and FLF
Both have RNFD = 0.5, so auxiliary interpretation is still needed.

## 5. Possible difficulty in real field use
Case-study success is promising, but practical field adoption will depend on whether the workflow is robust under:
- shut-ins
- partial months
- workovers
- stream-mix changes
- allocation artifacts

---

# Section 13 — Comparison Notes vs Existing Vault Methods

## vs [[Modified Hyperbolic (Robertson)]]
- RNFD appears more diagnostic and flow-regime-aware
- Modified Hyperbolic is much simpler operationally
- RNFD may be better for understanding *why* a forecast is behaving a certain way
- Modified Hyperbolic is probably still easier for routine engineering workflow

## vs [[Duong Method]]
- both are unconventional-focused
- both rely on diagnostic signatures tied to flow behavior
- Duong is simpler to implement
- RNFD may provide richer regime interpretation if derivative behavior is stable

## vs [[Stretched Exponential (SEPD)]]
- SEPD is elegant and compact
- RNFD is more interpretive and process-oriented
- SEPD is easier to forecast with
- RNFD may be better at diagnosing where the well is in regime space

## vs [[Power Law Exponential]]
- PLE gives a smooth fitted functional form
- RNFD seems less like a closed-form curve and more like a guided simulation approach
- PLE is likely easier for routine field deployment

## vs [[Rate Transient Analysis (RTA)]]
- RNFD feels closer to RTA thinking than most DCA methods
- but still uses production-history-only logic
- may be a “middle ground” between empirical DCA and full diagnostic interpretation

---

# Section 14 — What Still Needs to Be Added

## Equations to extract more precisely
- [ ] exact RNFD definition as written
- [ ] exact numerical derivative equation
- [ ] exact forecasting recurrence equation
- [ ] exact cumulative production equation
- [ ] exact skin-effect replacement equations
- [ ] exact correction-factor derivation language

## Results / validation to extract
- [ ] summary of case-study count
- [ ] oil vs gas examples
- [ ] how they measured “excellent match”
- [ ] any comparisons to Arps, Duong, Beta-Derivative, etc.
- [ ] explicit limitations section

---

# Section 15 — Preliminary Judgment After Reading These Sections

## Strongest conceptual takeaway
RNFD is best understood as a **flow-regime-aware, derivative-based DCA framework** rather than just “another decline equation.”

## Most promising feature
The constant RNFD values by regime:
- 0.25
- 0.5
- 1.0

give a very intuitive diagnostic structure.

## Biggest practical question
Can the derivative and regime-picking workflow survive real field-noise conditions well enough to outperform simpler modern DCA methods?

## My current position
Promising enough to continue reviewing seriously, but not yet ready to replace the practical toolkit currently in the vault.

---

# Section 16 — Notes While Reading

## Reading notes
- The paper is much more workflow-oriented than standard DCA papers.
- It uses regime slope identification first, RNFD second, and forecasting recurrence third.
- This makes it conceptually rich but may make field adoption harder.

## Points I agree with
- flow regime identification is foundational
- unconventional wells need more than naive Arps
- derivatives are valuable if noise can be controlled

## Points I’m skeptical of
- derivative robustness on messy field data
- consistency of user-picked transition points
- whether the method is operationally simpler than existing modern methods

## Ideas to test later
- compare RNFD logic against one of the clean case studies
- compare regime interpretations against existing flow-regime notes
- evaluate whether RNFD adds value beyond method selection + modern bounded DCA

---

## Related Notes
- [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]]
- [[Flow Regime Identification for DCA]]
- [[DCA Method Selection Guide]]
- [[Rate Transient Analysis (RTA)]]
- [[Duong Method]]
- [[Power Law Exponential]]
- [[Stretched Exponential (SEPD)]]
## How to use this note

As you read the paper, update it in this order:

1. Fill in the exact RNFD equations  
2. Capture the derivative / noise-reduction method  
3. Write down the flow-regime logic  
4. Compare it against:
   - Duong  
   - PLE  
   - SEPD  
   - Modified Hyperbolic  
5. Decide whether it deserves promotion to a full method note
---
## My recommendation

Don’t try to fully summarize the paper in one pass.

Instead:

1. First pass → definitions + equations  
2. Second pass → method logic + strengths/weaknesses  
3. Third pass → whether it belongs in your workflow
## Related Notes
- [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]]
- [[Flow Regime Identification for DCA]]
- [[DCA Method Selection Guide]]
- [[Rate Transient Analysis (RTA)]]
- [[Duong Method]]
- [[Power Law Exponential]]
- [[Stretched Exponential (SEPD)]]