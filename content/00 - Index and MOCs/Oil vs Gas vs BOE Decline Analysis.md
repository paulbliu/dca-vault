

**Created:** 2026-04-29
**Tags:** #concept #dca #oil #gas #boe #forecasting #multistream

## Definition
**Oil vs Gas vs BOE decline analysis** is the decision process for choosing which production stream to forecast when a well produces multiple hydrocarbons.

A multi-stream well may produce:
- **oil**
- **gas**
- **water**
- sometimes **NGL-rich gas**

The key question is:

> [!question] What should be fit?
> - **oil decline?**
> - **gas decline?**
> - **BOE decline?**
> - or **more than one separately?**

The answer depends on:
- reservoir physics
- stream dominance
- economics
- reporting purpose
- how the gas-oil ratio changes through time

---

## Short Answer

> [!tip] Rule of Thumb
> - If **oil drives value**, fit **oil**
> - If **gas drives value**, fit **gas**
> - If both streams matter materially, fit **oil and gas separately**
> - Use **BOE only with caution** and mostly for high-level screening

---

## Why This Matters
A well can look very different depending on which stream you analyze.

Examples:
- oil may decline fast while gas stays relatively resilient
- gas may increase in relative importance as GOR rises
- BOE may appear smoother than either actual stream
- a BOE fit can hide important physical changes in the well

This means the stream choice can materially affect:
- EUR
- reserves classification
- economics
- type-well construction
- interpretation of flow regime

---

## The Three Main Forecasting Lenses

## 1. Oil Decline Analysis
Forecasting only the oil stream.

### Best when
- oil is the primary economic driver
- gas is associated but secondary
- benchmarking against oil-type wells
- reserves / planning discussions are oil-centered

### Advantages
- directly tied to oil revenue
- easiest to compare across oil-dominant wells
- aligns well with common unconventional oil workflows

### Limitations
- ignores gas contribution to value
- may understate total hydrocarbon importance in gassy wells
- can miss physics if gas behavior diverges strongly from oil behavior

### Good examples
- oil-rich Wolfcamp / Bone Spring wells
- many Midland Basin oil horizontals
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]

---

## 2. Gas Decline Analysis
Forecasting only the gas stream.

### Best when
- gas dominates BOE or revenue
- well is gas-rich or gas-driven
- GOR is high from startup
- gas reserves / gas facilities planning matters
- well behaves more like a gas-rich unconventional than an oil-led well

### Advantages
- captures gas-driven value directly
- appropriate for gas-rich wells where oil is secondary
- often more stable for certain high-GOR wells

### Limitations
- ignores liquid value
- may under-represent oil economics if condensate/oil is meaningful
- can be misleading if gas is strongly allocation-sensitive or facility-constrained

### Good examples
- dry gas wells
- wet gas wells
- gas-rich unconventional oil wells
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]

---

## 3. BOE Decline Analysis
Forecasting the combined stream after converting gas to BOE.

Typical conversion:
$$
1 \text{ BOE} = 6 \text{ MCF gas}
$$

So:
$$
BOE = Oil\ (BBL) + \frac{Gas\ (MCF)}{6}
$$

### Best when
- doing quick screening
- comparing total hydrocarbon throughput at a high level
- building rough portfolio summaries
- stream behavior is fairly stable through time

### Advantages
- single metric
- convenient for quick comparisons
- easy to visualize total “hydrocarbon output”

### Limitations
- can hide important stream divergence
- 6:1 is an energy conversion, **not an economic conversion**
- ignores price differences between oil and gas
- can conceal rising GOR, changing fluid mix, and changing value per BOE

> [!warning] BOE is often convenient but physically and economically misleading
> A BOE curve may look smooth while oil collapses and gas dominates.
> This can lead to the wrong engineering conclusions.

---

## Why BOE Can Be Misleading

### 1. Energy equivalence is not revenue equivalence
The 6 MCF = 1 BOE conversion is based on energy content, not value.

If oil is $75/bbl and gas is $3/MMBtu, then:
- 1 bbl oil ? 6 mcf gas economically
- BOE can overstate the importance of gas in some contexts
- or understate liquids in others, depending on pricing

### 2. GOR changes through time
Many unconventional wells experience:
- declining oil rate
- relatively stronger gas production
- increasing GOR

If you fit BOE only, you may miss:
- pressure depletion effects
- bubble-point behavior
- stream crossover in value contribution

### 3. Different streams can have different decline physics
Oil and gas may not decline with the same shape:
- oil may drop faster than gas
- gas may show a longer tail
- water may complicate operating economics

A single BOE decline curve mixes these together.

---

## GOR and Stream Interpretation

### Gas-Oil Ratio
$$
GOR = \frac{Gas\ Production\ (SCF)}{Oil\ Production\ (BBL)}
$$

GOR evolution is often one of the most important clues in multi-stream analysis.

### If GOR is:
#### Flat
- fluid mix is relatively stable
- BOE may be less misleading
- separate-stream fits may still be preferable, but BOE is safer

#### Increasing
- gas is becoming more important
- oil-only and gas-only fits may diverge
- BOE may hide the shift in well behavior
- separate-stream analysis is strongly preferred

#### Highly volatile
- facility, allocation, or reporting issues may exist
- QC becomes critical
- avoid blindly fitting BOE

---

## Decision Guide

## Use **Oil** decline when:
- oil is the primary value driver
- gas is associated and secondary
- the well is clearly oil-led
- the audience thinks in BOPD / MBO
- type curves are oil-based

## Use **Gas** decline when:
- gas dominates BOE or revenue
- well is gas-rich
- planning is gas-system-sensitive
- audience thinks in MCFD / BCF
- oil stream is secondary

## Use **Oil + Gas separately** when:
- both streams are economically meaningful
- GOR changes materially over time
- you care about physics and economics
- you want a better reserves / forecasting workflow
- the well is multi-stream and mature enough to show divergence

## Use **BOE** when:
- doing fast screening
- summarizing at portfolio level
- comparing broad hydrocarbon throughput
- stream mix is relatively stable
- you clearly state the limitations

> [!tip] Best Practice
> For any important multi-stream well, fit **oil and gas separately**, then combine later for economics or BOE views.

---

## Recommended Workflow for Multi-Stream Wells

```text
1. Pull monthly oil, gas, water
    
2. Calculate oil rate and gas rate separately
    
3. Calculate GOR over time
   
4. Decide which stream matters most:
   - oil?
   - gas?
   - both?
   
5. Fit oil and gas separately if both matter
   
6. Build BOE only as a summary layer, not the primary physics layer
   
7. Compare stream-level EURs and economics
```

---

## Practical Hierarchy

### Engineering hierarchy
1. **Fit stream-level behavior first**
2. **Use BOE later for communication / summary**

That means:
- physics first
- convenience second

---

## Examples from This Vault

## 1. [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
Best interpreted primarily as:
- **oil-focused**
- gas meaningful, but oil-led note is appropriate

### Lesson
Oil decline is the right primary lens; gas can be secondary.

---

## 2. [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
Best interpreted primarily as:
- **oil-focused**
- longer history shows solution-gas-drive effects
- rising GOR suggests growing gas importance

### Lesson
Still an oil case, but stream divergence becomes more important late in life.

---

## 3. [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
Best interpreted as:
- **gas-focused**
- significant oil still exists, but gas dominates BOE

### Lesson
This is where gas-rate DCA is the right primary lens and oil should be treated as a companion stream.

---

## When BOE Is Acceptable
BOE can be useful for:
- dashboards
- screening large well populations
- broad benchmark charts
- portfolio-level summaries
- quick “hydrocarbon throughput” comparisons

### But BOE should not be the only lens when:
- stream mix changes materially
- economics matter
- GOR trends are important
- reserves need to be defensible
- physics interpretation matters

---

## Economic Interpretation
A better economic workflow than pure BOE is:

### Separate-stream forecast:
- oil EUR
- gas EUR
- optionally NGL EUR

Then apply:
- oil price
- gas price
- NGL yield / price
- royalties / NRI
- OpEx assumptions

This produces a much more realistic economic forecast than relying only on BOE.

> [!info] Engineering vs Economic Layers
> - **Engineering layer:** oil / gas / water separately
> - **Economic layer:** convert streams into value
> - **Communication layer:** optionally summarize in BOE

---

## Common Mistakes

> [!danger] Common BOE / Stream Mistakes
> 1. Fitting only BOE and assuming it represents reservoir physics
> 2. Ignoring rising GOR
> 3. Treating 6:1 BOE as an economic equivalence
> 4. Forecasting oil from a gas-led BOE curve
> 5. Using a single-stream forecast for a clearly multi-stream well
> 6. Ignoring water and operating burden in late-life economics
> 7. Comparing wells only on BOE without checking stream mix

---

## Recommended Best Practice

### For screening
- BOE is acceptable for speed

### For real engineering work
- fit oil separately
- fit gas separately
- examine GOR trend
- use BOE only as a summary

### For important wells
- combine stream-level DCA with [[Rate Transient Analysis (RTA)]]
- use stream-level economics rather than raw BOE alone

---

## Simple Decision Table

| Situation | Best primary fit |
|---|---|
| oil-dominant unconventional well | Oil |
| gas-rich unconventional well | Gas |
| both streams materially important | Oil + Gas separately |
| quick portfolio screening | BOE |
| changing GOR through time | Oil + Gas separately |
| reserves / economics case | Separate streams first, BOE second |

---

## Related Notes
- [[EUR Estimation]]
- [[b-factor interpretation]]
- [[Transient vs Boundary-Dominated Flow]]
- [[Rate Transient Analysis (RTA)]]
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]