

**Created:** 2026-04-29
**Tags:** #checklist #paper-review #reference #workflow #petroleum-engineering

## Purpose
This checklist is a reusable framework for reviewing petroleum engineering papers, especially those related to:

- decline curve analysis (DCA)
- rate transient analysis (RTA)
- forecasting
- production diagnostics
- unconventional reservoir performance
- reserves / EUR estimation

The goal is to review papers consistently and decide whether they should become:
- reference notes
- working notes
- full concept/method notes
- practical workflows

---

## How to Use This Checklist
For each paper:

1. read the abstract
2. identify the core contribution
3. extract the equations / methodology
4. evaluate assumptions and limitations
5. compare against methods already in the vault
6. decide whether the paper is:
   - useful conceptually
   - practically useful
   - worth implementing
   - worth promoting into a standalone note

---

# Section 1 — Basic Bibliographic Info

- [ ] Title
- [ ] Authors
- [ ] Year
- [ ] Journal / conference
- [ ] DOI / link
- [ ] Basin / field context if case-specific
- [ ] Oil / gas / multi-stream relevance

### Questions
- Is this a peer-reviewed journal paper or conference paper?
- Is it recent enough to reflect current unconventional practice?
- Is it likely to be cited / influential?

---

# Section 2 — What Problem Is the Paper Trying to Solve?

- [ ] What is the paper reacting against?
- [ ] What limitation of current methods is it trying to fix?
- [ ] Is the problem practical, theoretical, or both?

### Questions
- What is wrong with the current standard workflow?
- Is this about:
  - poor forecasting?
  - weak physics?
  - bad noise handling?
  - no flow-regime awareness?
  - no reservoir characterization?
  - poor late-life behavior?

> [!tip] Good papers solve a real pain point
> If you cannot clearly state the problem in one or two sentences, you probably do not yet understand the paper.

---

# Section 3 — Core Contribution

- [ ] What is the main idea?
- [ ] What is genuinely new?
- [ ] Is it a new method, a modification, or a reinterpretation?

### Questions
- Does the paper introduce:
  - a new decline equation?
  - a new diagnostic?
  - a new derivative?
  - a new normalization?
  - a new workflow?
  - a new physical interpretation?

### One-sentence summary template
> This paper introduces _______ to improve _______ by using _______.

---

# Section 4 — Equations and Definitions

- [ ] Write down the key equations
- [ ] Define every variable
- [ ] Note units if relevant
- [ ] Identify whether the equations are empirical, analytical, semi-analytical, or numerical

### Questions
- Are the equations easy to implement?
- Are they dimensionally clear?
- Are any variables hidden, assumed, or poorly defined?
- Is there a closed-form forecast or only numerical integration?

> [!warning] If the notation is unclear, do not trust your interpretation yet.

---

# Section 5 — Physical Basis

- [ ] What reservoir physics does the method assume?
- [ ] What flow regime is it built for?
- [ ] Does it claim physical rigor or just empirical success?

### Questions
- Is the method intended for:
  - transient flow?
  - linear flow?
  - bilinear flow?
  - BDF?
  - mixed regimes?
- Does the paper derive the method from diffusivity / flow equations?
- Or is it a curve-fitting model that is only loosely motivated by physics?

---

# Section 6 — Data Requirements

- [ ] What data are required?
- [ ] Rate only?
- [ ] Cumulative production?
- [ ] Pressure data?
- [ ] Multi-stream data?
- [ ] High-frequency data?

### Questions
- Can this be used on monthly field data?
- Does it require clean daily data?
- Does it require bottomhole pressure?
- Does it assume constant operating conditions?

> [!tip] Practicality depends heavily on data requirements.
> A method that needs data you never have is not a practical workflow tool.

---

# Section 7 — Noise Sensitivity / Robustness

- [ ] Does the method address noisy field data?
- [ ] Does it require smoothing?
- [ ] Does it break under shut-ins / workovers / partial months?

### Questions
- Is the method robust to operational noise?
- How sensitive is it to derivative instability?
- Does the paper use synthetic or real field data?
- Are the case studies unrealistically clean?

This is especially important for:
- derivative-based methods
- unconventional field data
- monthly allocated volumes

---

# Section 8 — Assumptions

- [ ] What assumptions are explicit?
- [ ] What assumptions are implicit?
- [ ] Which assumptions are likely to break in the field?

### Questions
- Constant BHP?
- Single-phase flow?
- no operational interruptions?
- homogeneous reservoir?
- stable completion?
- one dominant flow regime?

### Compare with:
- [[DCA Assumptions Library]]

---

# Section 9 — Validation

- [ ] How is the method validated?
- [ ] Synthetic examples?
- [ ] Real field examples?
- [ ] Multiple basins?
- [ ] Oil and gas?
- [ ] Comparison to other methods?

### Questions
- How many case studies are shown?
- Are the examples cherry-picked?
- Are there quantitative comparisons or only visual matches?
- Does the paper benchmark against strong existing methods?

> [!important] A method is much more convincing if it is tested against serious alternatives.

---

# Section 10 — Comparison to Existing Methods

- [ ] How does it compare with Arps?
- [ ] Modified Hyperbolic?
- [ ] Duong?
- [ ] SEPD?
- [ ] PLE?
- [ ] RTA / Fetkovich / type curves?

### Questions
- Is this method better?
- Better at what exactly?
- More physical?
- More robust?
- Easier to use?
- Better forecasts?
- Better diagnostics?
- Or just different?

### Related vault notes
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]
- [[Rate Transient Analysis (RTA)]]

---

# Section 11 — Practical Usefulness

- [ ] Could I actually use this in real engineering work?
- [ ] Is it implementable in Python / Excel / commercial software?
- [ ] Would stakeholders understand it?

### Questions
- Is this a field tool or a research idea?
- Would I use this in a case study?
- Would I trust it for screening?
- Would I trust it for reserves?
- Does it improve decisions, or just add complexity?

---

# Section 12 — Limitations and Failure Cases

- [ ] What limitations do the authors admit?
- [ ] What limitations do they not discuss?
- [ ] Where would this method likely fail?

### Questions
- Does it handle:
  - noisy data?
  - variable pressure?
  - gas-rich systems?
  - multi-phase flow?
  - workovers?
  - very short history?
  - late-life wells?
  - changing GOR?

> [!tip] A good review looks for failure modes, not just success stories.

---

# Section 13 — Fit with My Vault

- [ ] Does this paper belong in `04 - References/` only?
- [ ] Should it become a working-notes file?
- [ ] Should it become a full concept/method note?
- [ ] Should it be linked into the case-study workflow?

### Possible outcomes
- **Reference only**
- **Working note**
- **Full concept note**
- **Workflow update**
- **Case-study test candidate**

---

# Section 14 — Decision After Review

## Choose one:

### A. Reference only
- useful to know about
- not practical enough to implement yet

### B. Working notes only
- promising
- needs deeper study
- not yet ready for full vault integration

### C. Promote to concept note
- important enough for `01 - Concepts/`
- deserves its own standalone method note

### D. Add to workflow
- practical enough to test in case studies
- may influence how future DCA work is done

### E. Reject for practical use
- interesting academically
- not useful enough for real workflows

---

# Section 15 — Personal Summary Template

Use this template after reading:

## What problem does the paper solve?
- 

## What is the new idea?
- 

## What assumptions does it rely on?
- 

## What are the strengths?
- 

## What are the weaknesses?
- 

## How does it compare with methods already in my vault?
- 

## Would I use it in practice?
- 

## Next action
- [ ] keep as reference
- [ ] create working note
- [ ] create concept note
- [ ] test on a case study
- [ ] ignore for now

---

# Fast Review Version
If short on time, answer just these 7 questions:

1. What problem is the paper solving?
2. What is actually new?
3. What equations / diagnostics matter?
4. What data does it require?
5. How does it compare with methods I already know?
6. Is it practical on real field data?
7. Is it worth adding to my vault as a method?

---

# Good Signs in a Paper
- clear problem statement
- explicit assumptions
- interpretable equations
- strong validation
- comparison against established methods
- realistic field examples
- honest limitations
- practical applicability

---

# Warning Signs in a Paper
- “excellent match” with little benchmarking
- unclear notation
- no discussion of noise sensitivity
- only synthetic examples
- no comparison against strong baselines
- too many parameters with weak physical meaning
- method looks elegant but unusable in field data
- ignores operational realities

---

# Related Notes
- [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]]
- [[RNFD Method - Working Notes]]
- [[DCA Method Selection Guide]]
- [[DCA Assumptions Library]]
- [[Flow Regime Identification for DCA]]