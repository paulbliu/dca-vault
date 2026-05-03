
**Created:** 2026-04-29
**Tags:** #concept #dca #flow-regime #fundamentals

## Definition
A producing well experiences **different flow regimes** depending on how the pressure disturbance propagates through the reservoir. The two most important regimes for decline curve analysis are:

- **Transient flow** — pressure disturbance is still traveling outward; the well "doesn't know" the reservoir has boundaries yet
- **Boundary-Dominated Flow (BDF)** — pressure disturbance has reached all boundaries; the reservoir is depleting as a closed tank

**Why this matters:** The [[Arps Equations]] are only valid during **boundary-dominated flow**. Applying them during transient flow gives misleading (often overly optimistic) results.

## Flow Regime Progression
A typical well goes through these stages:
```
Time 
|-- Early Transient (radial flow, infinite-acting reservoir)
|-- Bilinear Flow (fracture + matrix, early multifrac wells)
|-- Linear Flow (common in hydraulically fractured wells)
|-- Late Transient (pressure approaching boundary)
`-- Boundary-Dominated Flow, Arps valid from here onward
```
## Key Differences

| Property | Transient Flow | Boundary-Dominated Flow |
|----------|---------------|------------------------|
| **Duration** | Hours to years (depends on permeability) | Rest of well life |
| **Reservoir boundaries** | Not yet "felt" | Fully "felt" |
| **Pressure behavior** | Wellbore pressure drops; far-field unaffected | Average reservoir pressure declines |
| **Rate decline shape** | Often appears hyperbolic with **b > 1** | True Arps behavior (b = 1) |
| **Arps applicable?** | ? No — will overestimate EUR | ? Yes |
| **Proper analysis** | Rate-transient analysis (RTA), type curves | [[Arps Equations]], [[Modified Hyperbolic (Robertson)]] |

## Identifying the Transition
Several diagnostic plots help identify when BDF begins:

### 1. **Log-Log Rate vs. Time**
- Transient linear flow ? **-1/2 slope**
- Transient bilinear flow ? **-1/4 slope**
- BDF ? unit slope or steeper (varies)

### 2. **Semi-Log Rate vs. Time**
- BDF in exponential decline ? straight line
- Departure from straight line ? still transient

### 3. **Rate-Normalized Pressure vs. Material Balance Time**
- Straight line through origin during BDF
- Curved during transient

### 4. **Derivative Analysis**
- The pressure derivative flattens during radial flow
- Unit slope in derivative ? BDF reached

## Typical Timing

| Reservoir Type | Time to Reach BDF |
|---------------|-------------------|
| Conventional high-perm oil (50+ mD) | Days to weeks |
| Conventional low-perm oil (1–10 mD) | Months |
| Tight gas (0.01–0.1 mD) | Years |
| Unconventional shale (<0.001 mD) | **Often never fully reached** during economic life |

> [!warning] Unconventional Challenge
> Most shale and tight oil wells spend **the majority of their economic life in transient or transitional flow**. This is why Arps with `b > 1` appears to fit early data well but over-predicts ultimate recovery. Modern methods like [[Duong Method]], [[Stretched Exponential (SEPD)]], or [[Modified Hyperbolic (Robertson)]] address this.

## Practical Implications for DCA

> [!tip] Best Practice
> 1. **Diagnose flow regime** before fitting Arps
> 2. **Exclude transient data** when fitting for long-term forecast
> 3. **Use terminal decline** constraints (e.g., minimum b, minimum Di) for unconventional wells
> 4. **Cross-check EUR** with volumetric estimates and analog wells

## Related
- [[Arps Equations]]
- [[Exponential Decline]]
- [[Hyperbolic Decline]]
- [[Harmonic Decline]]
- [[b-factor interpretation]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[EUR Estimation]]

## References
- Fetkovich, M.J. (1980). "Decline Curve Analysis Using Type Curves". *JPT*, 32(6), 1065-1077.
- Agarwal, R.G., et al. (1999). "Analyzing Well Production Data Using Combined Type-Curve and Decline-Curve Concepts". SPE-57916.
- Ilk, D., et al. (2008). "Exponential vs. Hyperbolic Decline in Tight Gas Sands". SPE-116731.