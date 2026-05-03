

**Created:** 2026-04-29  
**Tags:** #equation #summary #dca #quick-reference

## Purpose
This note is a quick-reference summary of common DCA formulae.

It combines:
- visual reference tables from Whitson and Harmony
- typed formulas in Obsidian-friendly math format
- compact practical notes on what each table is useful for

This note is intended as a **desk reference**, not a replacement for the more detailed theory and method notes.

---

## How to Use This Note

### Use this note when you need:
- a quick formula check
- a fast comparison between decline forms
- a cumulative-production formula reference
- a sanity check against software output
- a reminder of how time-substituted cumulative forms look
- a compact view of classical Arps conversion / EUR relationships

### Do not rely on this note alone when:
- choosing methods for a real well
- interpreting flow regime
- deciding assumptions like Dmin or economic limit
- comparing nominal vs effective decline conventions

For those topics, see:
- [[Decline Rate Conventions and Conversions]]
- [[DCA Method Selection Guide]]
- [[Flow Regime Identification for DCA]]
- [[DCA Assumptions Library]]

---

## Symbol Definitions

- $q_i$ = initial production rate
- $q_t$ = production rate at time $t$
- $q_{lim}$ = rate at transition to exponential tail
- $q_f$ = final / abandonment rate
- $a_i$ = initial decline rate
- $a_t$ = decline rate at time $t$
- $a_{lim}$ = limiting nominal decline rate
- $b$ = Arps decline exponent
- $m$ = slope for linear decline segment
- $n$ = power-law exponent
- $Q_t$ = cumulative production at time $t$
- $Q_f$ = ultimate / final cumulative production
- $Q_i$ = cumulative production at start of forecast
- $d_i$ = initial effective decline
- $\Delta t$ = elapsed time increment
- $t_0$ = reference/start time for power-law cumulative expression
- $t_{lim}$ = time of transition from hyperbolic to exponential

---

# 1. General DCA Formulae Summary

## Visual Reference
![[DCA Formulae Summary.png]]

> [!note] Source
> Adapted from the Whitson decline curve analysis manual, section **2.3. DCA Summary**.

## Rate / Time / Decline Table

| Type | Decline Rate | Producing Rate, $q$ | Elapsed Time, $t$ | Cumulative Production, $Q_t$ |
|---|---|---|---|---|
| **Exponential** | $a_t = \ln\left(\frac{q_i}{q_t}\right)/t$ | $q_i e^{-a_i t}$ | $\ln\left(\frac{q_i}{q_t}\right)/a_i$ | $\frac{q_i-q_t}{a_i}$ |
| **Hyperbolic** | $\frac{a_i}{a_t}=\left(\frac{q_i}{q_t}\right)^b$ | $q_i(1+b a_i t)^{-1/b}$ | $\frac{(q_i/q_t)^b-1}{b a_i}$ | $\frac{q_i}{a_i(1-b)}\left(1-\left(\frac{q_t}{q_i}\right)^{1-b}\right)$ |
| **Harmonic** | $\frac{a_i}{a_t}=\frac{q_i}{q_t}$ | $q_i(1+a_i t)^{-1}$ | $\frac{q_i-q_t}{a_i q_t}$ | $\frac{q_i}{a_i}\ln\left(\frac{q_i}{q_t}\right)$ |
| **Linear** | $a_t=\frac{-m}{q_t}$ | $q_i+mt$ | $\frac{q_t-q_i}{m}$ | $\frac{1}{m}\left[q_i(q_t-q_i)+\frac{(q_t-q_i)^2}{2}\right]$ |
| **Constant** | $a_t=0$ | $q_i$ | $t$ | $q_i t$ |
| **Semi-Log** | $a_t=\ln\left(\frac{q_i}{q_t}\right)/t$ | $q_i e^{-a_i t}$ | $\ln\left(\frac{q_i}{q_t}\right)/a_i$ | $\frac{q_i-q_t}{a_i}$ |
| **Power-Law** | $a_t=n\left(\frac{q_t}{q_i}\right)$ | $q_i\left(\frac{q_i}{q_t}\right)^n$ | $t=\left(\frac{q_i}{q_t}\right)^{1/n}$ | for $n\neq1$: $\frac{q_i}{1-n}\left[\left(\frac{q_i}{q_t}\right)^{\frac{1-n}{n}}-t_0^{\,1-n}\right]$; for $n=1$: $\frac{q_i}{n}\ln\left(\frac{q_i}{q_t}\right)-q_i\ln(t_0)$ |

## Quick Notes
- **Exponential**: constant nominal decline; simplest and most conservative Arps case
- **Hyperbolic**: main Arps workhorse; use caution if apparent $b>1$
- **Harmonic**: long tail, high EUR; should be strongly justified
- **Linear / Constant**: useful for segmented or constrained forecasts
- **Semi-Log**: same algebraic form as exponential in this summary
- **Power-Law**: useful in specialized workflows; depends on $t_0$

---

# 2. Cumulative Production Formulae Summary

## Visual Reference
![[DCA Cumulative Formulae.png]]

> [!note] Source
> Adapted from the Whitson decline curve analysis manual, section **2.3. DCA Summary**.

## Cumulative Production Table

| Type | Cumulative Production $Q_t(t)$ | Cumulative Production $Q_t$ (with time substituted) |
|---|---|---|
| **Exponential** | $\frac{q_i}{a_i}\left(1-e^{-a_i t}\right)$ | $\frac{q_i-q_t}{a_i}$ |
| **Hyperbolic** | $\frac{q_i}{a_i(1-b)}\left[1-(1+b a_i t)^{\frac{b-1}{b}}\right],\; b\neq1$ | $\frac{q_i}{a_i(1-b)}\left(1-\left(\frac{q_t}{q_i}\right)^{1-b}\right),\; b\neq1$ |
| **Harmonic** | $\frac{q_i}{a_i}\ln(1+a_i t)$ | $\frac{q_i}{a_i}\ln\left(\frac{q_i}{q_t}\right)$ |
| **Linear** | $q_i t+\frac{m t^2}{2}$ | $\frac{1}{m}\left[q_i(q_t-q_i)+\frac{(q_t-q_i)^2}{2}\right]$ |
| **Constant** | $q_i t$ | $q_i t$ |
| **Semi-Log** | $\frac{q_i}{a_i}\left(1-e^{-a_i t}\right)$ | $\frac{q_i-q_t}{a_i}$ |
| **Power-Law** | for $n\neq1$: $\frac{q_i}{n-1}\left(t^{1-n}-t_0^{\,1-n}\right)$; for $n=1$: $q_i\ln\left(\frac{t}{t_0}\right)$ | for $n\neq1$: $\frac{q_i}{1-n}\left[\left(\frac{q_i}{q_t}\right)^{\frac{1-n}{n}}-t_0^{\,1-n}\right]$; for $n=1$: $q_i\ln\left(\frac{q_i}{q_t}\right)-q_i\ln(t_0)$ |

## Why This Table Is Useful
This table separates cumulative production into two views:

### Time-domain cumulative
This expresses cumulative production directly as a function of time:
- $Q_t(t)$

### Time-substituted cumulative
This removes explicit time and expresses cumulative directly in terms of current rate:
- useful for rate-cumulative analysis
- useful for decline diagnostics
- useful when checking software outputs in different plotting domains

## Quick Notes
- **Exponential**: simplest cumulative form
- **Hyperbolic**: one of the most important cumulative formulas for DCA work
- **Harmonic**: helps explain why harmonic can create very large EURs
- **Linear / Constant**: convenient for segmented workflows
- **Power-Law**: depends strongly on $t_0$ and should be used only when the framework is well-defined

---

# 3. Classical Arps Conversion and Forecast Table

## Visual Reference
![[Arps Production Decline Equation Summary.png]]

> [!note] Source
> Harmony classical Arps decline summary table showing decline conversion, rate-time, rate-cumulative, and EUR forms for exponential, hyperbolic, and harmonic decline.

## Digital Table

| Type | Exponential Decline | Hyperbolic Decline | Harmonic Decline |
|---|---|---|---|
| **$d_i \rightarrow a_i$** | $a_i = -\ln(1-d_i)$ | $a_i = \frac{1}{b}\left[(1-d_i)^{-b}-1\right]$ | $a_i = \frac{d_i}{1-d_i}$ |
| **$a_i \rightarrow d_i$** | $d_i = 1-e^{-a_i}$ | $d_i = 1-(1+b a_i)^{-1/b}$ | $d_i = \frac{a_i}{1+a_i}$ |
| **$a(t)$** | $a=a_i$ | $a=a_i(1+b a_i \Delta t)^{-1}$ | $a=a_i(1+a_i \Delta t)^{-1}$ |
| **Rate-Time** | $q=q_i e^{-a\Delta t}$ | $q=\frac{q_i}{(1+b a_i \Delta t)^{1/b}}$ | $q=\frac{q_i}{1+a_i \Delta t}$ |
| **Rate-Cumulative** | $Q=\frac{q_i-q}{a}$  <br> $q=q_i-Qa$ | $Q=\frac{q_i^b}{a_i(1-b)}\left(q_i^{1-b}-q^{1-b}\right)$ <br><br> $q^{(1-b)}=q_i^{(1-b)}-\frac{Q\,a_i(1-b)}{q_i^b}$ | $Q=\frac{q_i}{a_i}\ln\left(\frac{q_i}{q}\right)$ <br><br> $q=q_i e^{-Q a_i/q_i}$ |
| **EUR** | $Q_f = Q_i + \left[\frac{q_i-q_f}{a}\right]$ | $Q_f = Q_i + \left[\frac{q_i^b}{a_i(1-b)}\left(q_i^{1-b}-q_f^{1-b}\right)\right]$ | $Q_f = Q_i + \left[\frac{q_i}{a_i}\ln\left(\frac{q_i}{q_f}\right)\right]$ |

## Why This Table Is Useful
This table is especially useful because it combines several practical items in one place:

- **effective decline to nominal decline conversion**
- **nominal decline to effective decline conversion**
- **decline rate at time**
- **rate-time equations**
- **rate-cumulative equations**
- **EUR equations**

It is one of the best compact references for the classical Arps family.

## Key Relationships Highlighted

### Exponential decline
- decline is constant
- $b=0$
- effective and nominal decline convert through the standard exponential relationship

### Hyperbolic decline
- decline is proportional to a fractional power of rate
- $0<b<1$
- decline rate changes with time
- nominal/effective conversion depends on $b$

### Harmonic decline
- decline is proportional to rate
- $b=1$
- special case of hyperbolic decline

## Quick Notes
- Useful when people report **$d_i$** but the equations require **$a_i$**
- Useful for rate-cumulative work and quick EUR checks
- Helpful for validating spreadsheet calculations and software outputs

---

# 4. Modified / Limited Decline Transition

## Why This Section Matters
Modified / limited decline is one of the most common practical unconventional workflows.  
The formulas below show how the forecast transitions from hyperbolic to exponential.

## Hyperbolic before transition
$$
q(t)=q_i(1+b a_i t)^{-1/b}
$$

## Exponential after transition
$$
q(t)=q_{lim}e^{-a_{lim}(t-t_{lim})}
$$

## Transition rate
$$
q_{lim}=q_i\left(\frac{a_{lim}}{a_i}\right)^{1/b}
$$

## Transition time
$$
t_{lim}=\frac{\left(\frac{q_i}{q_{lim}}\right)^b-1}{b a_i}
$$

or equivalently:

$$
t_{lim}=\frac{1/a_{lim}-1/a_i}{b}
$$

> [!important] Practical note
> The limiting decline is usually communicated in **effective annual decline** terms, then converted to **nominal decline** before using these equations.

See:
- [[Modified Hyperbolic (Robertson)]]
- [[Decline Rate Conventions and Conversions]]

---

# 5. What This Note Does Best

This note is most useful as a:

- formula cheat sheet
- software cross-check aid
- quick cumulative / EUR reference
- reminder of how different decline families compare algebraically

It is **not** the best note for:
- method selection
- flow-regime interpretation
- assumption setting
- nominal vs effective convention decisions

For those topics, use the linked interpretation notes below.

---

# 6. Related Notes

## Core Arps notes
- [[Arps Hyperbolic Equation]]
- [[Arps Exponential Equation]]
- [[Arps Harmonic Equation]]

## Practical interpretation notes
- [[Decline Rate Conventions and Conversions]]
- [[DCA Method Selection Guide]]
- [[DCA Assumptions Library]]

## Broader method context
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[Duong Method]]
- [[Stretched Exponential (SEPD)]]
- [[Power Law Exponential]]

---

# 7. Bottom Line

> [!tip] Best use
> This note is your **formula cheat sheet**.
> Use it for quick lookup, but pair it with the interpretation notes when doing real engineering work.