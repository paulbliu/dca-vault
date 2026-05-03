

**Created:** 2026-04-29
**Tags:** #case-study #dca #dj-basin #wattenberg #niobrara #oxy

> [!info] Quick Facts
> - **Well:** PROWANT 18-11HZ NBRR
> - **API:** 05123507620000
> - **Asset:** DJ Basin
> - **Field:** Wattenberg
> - **Reservoir:** Niobrara
> - **County:** Weld County, Colorado
> - **Direction:** Horizontal
> - **Peak oil rate:** ~520 BOPD (September 2021)
> - **Observed oil to date:** ~212 MBO
> - **Observed gas to date:** ~609 MMCF
> - **Observed water to date:** ~24 MBO
> - **Water-oil ratio:** ~0.11–0.15 range overall, much lower than many Permian cases
> - **This is the “lower-water contrast case” in the vault**

## Why This Case Matters
This case was chosen specifically to add a **cross-basin contrast** to the existing case library.

Compared with the Permian examples, this DJ Basin Niobrara well shows:
- materially lower water burden
- a different stream balance
- a lower-rate, more moderate oil profile
- a different operating / economic character than Delaware and Midland wells

This makes it a very useful comparison case for understanding **how basin context changes decline interpretation**.

## Results Visualization

![[prowant_18_11hz_dj_dca_comparison.png]]

## Why This Well Is Different from the Permian Cases

| Case | Basin | Reservoir | Main Lens | Water Behavior |
|---|---|---|---|---|
| [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]] | Delaware | Wolfcamp | Oil | higher water burden |
| [[SOUTH CURTIS RANCH 401SP - DCA Comparison]] | Midland | Middle Spraberry | Oil | moderate water + operational noise |
| [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]] | Delaware | Wolfcamp | Gas | gas-rich case |
| **PROWANT 18-11HZ NBRR** | **DJ Basin** | **Niobrara** | **Oil** | **lower water contrast** |

## Key Production Profile
This well has:
- moderate unconventional oil rates
- moderate gas support
- comparatively restrained water production
- a cleaner “productive” decline signature than some noisier Permian wells

### Approximate cumulative stream profile
- **Oil:** ~212 MBO
- **Gas:** ~609 MMCF
- **Water:** ~24 MBO

That means:
- water burden is materially lower than the Permian oil cases
- lifting / handling burden is lighter
- the decline story is less dominated by produced water growth

## DCA Methods Applied
The same multi-method framework used for the other case studies was applied here:

1. [[Arps Equations]] — Arps Hyperbolic
2. [[Modified Hyperbolic (Robertson)]]
3. [[Duong Method]]
4. [[Stretched Exponential (SEPD)]]
5. [[Power Law Exponential]]

### Assumptions
- **Economic oil limit:** 20 BOPD
- **Terminal decline for constrained methods:** 8%/yr effective

> [!note] Why 20 BOPD?
> For a mature lower-rate DJ Basin oil well, a 20 BOPD screening limit is a reasonable illustrative assumption. Formal economic limits should still be aligned with actual OpEx, pricing, and reserves guidance.

## Key Observations

### 1. Lower Water Burden Changes the Feel of the Well
In this well, water is present, but it is not overwhelming the system in the way some Permian wells can.

That matters because:
- operating burden is lighter
- economics can remain viable at lower oil rates
- decline interpretation is often cleaner
- late-life behavior is less distorted by water handling constraints

### 2. The Well Looks More “Orderly” Than the Midland Noise Case
Unlike [[SOUTH CURTIS RANCH 401SP - DCA Comparison]], this well does not show the same level of dramatic workover/shut-in distortion in the main producing history.

That makes it useful as a **cleaner mature non-Permian oil case**.

### 3. Lower-Rate Unconventional Wells Still Benefit from Multi-Method Comparison
Even though the peak oil rate here is much lower than SILVERTIP, the same lesson still applies:

> [!tip] Core DCA Lesson
> Unconstrained hyperbolic is usually not enough by itself.
> Comparing constrained/modern methods still gives a better view of uncertainty.

### 4. Cross-Basin Context Matters
A Delaware Wolfcamp well, a Midland Spraberry well, and a DJ Niobrara well may all be “unconventional horizontals,” but they are **not interchangeable** in behavior.

This DJ case helps demonstrate:
- lower water burden
- different gas/oil balance
- different scale of oil rates
- different operational and economic character

## Engineering Interpretation

### Flow regime
This well appears to behave like a more mature unconventional oil well with a relatively stable late-life decline profile. It is less dominated by obvious operational disruptions than the noisy Midland case.

### Stream interpretation
This is still best treated primarily as an **oil-focused case**, but gas remains relevant enough to monitor.

### Water interpretation
The lower water burden is one of the most educational aspects of the case:
- it shows why basin-specific context matters
- it shows why not all unconventional wells should be interpreted through a “Permian high-water” lens
- it improves the vault’s diversity of examples

## Cross-Basin Learning Value

### Delaware case teaches:
- high-rate unconventional oil behavior
- strong modern-method agreement
- classic Permian productivity scale

### Midland case teaches:
- noisy field data handling
- workover filtering
- emerging BDF interpretation

### DJ case teaches:
- lower-water contrast
- moderate oil-rate unconventional behavior
- cleaner mature profile outside Permian

## Suggested Use of This Case
Use this note when you want to illustrate:
- that unconventional decline behavior differs across basins
- that lower-water wells deserve separate mental models
- that DCA should be interpreted in basin context, not just by formula

## Files
- Interactive chart: [[prowant_18_11hz_dj_dca_comparison.png]](see attached)
- Full fit results + forecasts: [[prowant_18_11hz_dj_dca_results.xlsx]](see attached)
## Related Notes
- [[Case Study Index]]
- [[Case Study Workflow - OxyGPT DCA]]
- [[Oil vs Gas vs BOE Decline Analysis]]
- [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]]
- [[SOUTH CURTIS RANCH 401SP - DCA Comparison]]
- [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]]
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

## Data Source
- Database: `OXYODS`
- Table: `prodods.monthly_allocated_volumes`
- Joined to: `mdmods.completion`
- Query date: 2026-04-29