

**Created:** 2026-04-29  
**Tags:** #concept #dca #decline-rate #effective-decline #nominal-decline #conversions #terminal-decline

## Purpose
This note explains the main decline-rate conventions used in decline curve analysis (DCA) and how to convert between them.

It addresses common confusion around:
- daily / monthly / yearly decline rates
- nominal vs effective decline
- secant effective vs tangent effective decline
- initial decline vs terminal decline
- limited / modified decline conventions
- software differences in decline-rate reporting

This note is essential because a statement like:

> “Use 8% terminal decline”

is incomplete unless you also specify:
- **nominal or effective**
- **daily, monthly, or annual**
- **secant effective or tangent effective**
- **initial decline or terminal decline**

---

## Why This Matters

> [!important] Same decline behavior, different numbers
> The exact same physical decline can be represented by different numerical values depending on the convention used.

If one engineer says:
- **8%/yr effective**

and another inputs:
- **8%/yr nominal**

they are **not using the same decline**.

If one software reports:
- **secant effective decline**

and another reports:
- **tangent effective decline**

those numbers may also **not be the same**.

This can materially change:
- transition time to terminal decline
- forecast shape
- remaining reserves
- EUR
- reserves categorization
- software-to-software comparisons

---

## Core Principles

1. Use **nominal decline** in the equations.
2. Use **effective decline** in communication only if the convention is explicitly stated.
3. Never write a decline assumption without specifying:
   - nominal or effective
   - if effective: secant or tangent
   - daily / monthly / yearly
   - initial or terminal

---

# 1. Time Basis: Daily, Monthly, and Yearly

Decline rates always depend on the time unit.

## Rule
If decline is expressed per:
- **day**, time in the equation must also be in **days**
- **month**, time must be in **months**
- **year**, time must be in **years**

---

## Nominal decline time-unit conversion

For **nominal decline**, unit conversion is straightforward.

### Yearly ⇔ Monthly nominal decline
$$
a_{yr} = 12a_{mo}
$$

$$
a_{mo} = \frac{a_{yr}}{12}
$$

### Yearly ⇔ Daily nominal decline
$$
a_{yr} = 365.25a_{day}
$$

$$
a_{day} = \frac{a_{yr}}{365.25}
$$

### Monthly ⇔ Daily nominal decline
$$
a_{mo} = 30.4375a_{day}
$$

$$
a_{day} = \frac{a_{mo}}{30.4375}
$$

---

## Example
If nominal decline is:

$$
a = 1.20 \text{ /year}
$$

then:

$$
a = 0.10 \text{ /month}
$$

and:

$$
a \approx 0.00329 \text{ /day}
$$

> [!warning] Important
> These simple conversions apply to **nominal decline**, not automatically to effective decline percentages.

---

# 2. Nominal Decline

Nominal decline rate is the instantaneous decline definition used in Arps equations.

It is defined as:

$$
a = -\frac{1}{q}\frac{dq}{dt}
$$

where:
- $q$ = rate
- $dq/dt$ = derivative of rate with respect to time

## Interpretation
Nominal decline is:
- instantaneous
- differential
- mathematically natural
- what you typically use inside DCA equations

Harmony explicitly describes nominal decline this way in its decline theory reference.

---

# 3. Effective Decline

Effective decline is a **finite-period decline percentage** over a chosen interval, usually one year.

For a rate dropping from $q_1$ to $q_2$ over a time interval:

$$
d = 1 - \frac{q_2}{q_1}
$$

## Interpretation
Effective decline answers the practical question:

> “How much did the rate actually decline over the year?”

This is often easier for engineers and reserves users to communicate.

---

# 4. Exponential Decline: Nominal vs Effective

For exponential decline:

$$
q(t)=q_i e^{-at}
$$

the relationship between nominal annual decline $a$ and effective annual decline $d$ is:

$$
d = 1 - e^{-a}
$$

and inversely:

$$
a = -\ln(1-d)
$$

This is the cleanest and most important conversion in DCA.

Harmony explicitly explains this relationship.

---

## Example: 8% effective annual decline
If:

$$
d = 0.08
$$

then:

$$
a = -\ln(1-0.08)=0.08338
$$

So:
- **8%/yr effective**
- equals about **8.338%/yr nominal**

They are close, but not identical.

---

# 5. Hyperbolic Decline: Why Confusion Starts

For hyperbolic decline:

$$
q(t)=\frac{q_i}{(1+b a_i t)^{1/b}}
$$

and:

$$
a(t)=\frac{a_i}{1+b a_i t}
$$

The decline rate changes with time.

That means phrases like:
- “initial decline”
- “effective decline”
- “terminal decline”

become ambiguous unless you specify exactly what convention you mean.

---

# 6. Effective Decline: Secant vs Tangent

This is one of the most important practical distinctions in modern DCA software.

Whitson explicitly distinguishes:
- **secant effective decline**
- **tangent effective decline**

and illustrates the difference in section:

> **2.5. Effective Decline: Secant vs Tangent**

---

## Why there are two “effective” declines
When decline is changing with time, there are two natural ways to define an annual effective percentage.

### A. Secant effective decline
This is based on the **finite drop over the time interval**.

It uses the actual drop from $q_1$ to $q_2$:

$$
d_{sec} = 1 - \frac{q_2}{q_1}
$$

Conceptually, it corresponds to the **chord (secant)** between two points on the decline curve.

### Interpretation
It answers:

> “What was the actual percent decline over the year?”

This is intuitive and often how engineers think about **initial decline**.

---

### B. Tangent effective decline
This is based on the **instantaneous local slope** at a point in time.

If the local nominal decline is $a$, then tangent effective decline is:

$$
d_{tan} = 1 - e^{-a}
$$

Conceptually, it corresponds to the **tangent** to the decline curve at that point.

### Interpretation
It answers:

> “If the local instantaneous decline behaved like an exponential decline, what annual effective decline would that imply?”

This makes it especially natural for:
- exponential decline
- limiting / terminal decline
- the final tail of modified decline

---

## Geometric interpretation
This is exactly what the Whitson graphic illustrates:

- **Secant effective** = based on the chord between two points
- **Tangent effective** = based on the tangent at a point

### Suggested embedded graphic
If you saved the screenshot to your vault, embed it here:

```markdown
## Secant vs Tangent Graphic
![[Whitson_secant_vs_tangent.png]]
```

### Suggested caption
> The secant effective decline uses the finite rate drop across a time interval, while tangent effective decline uses the local instantaneous slope translated into an annual effective percentage.

---

## Why this distinction matters
For hyperbolic decline:
- decline is not constant
- secant and tangent effective decline are **not the same**
- software may report one or the other
- engineers may communicate one but assume the other

This is one of the biggest sources of confusion in DCA practice.

---

## Secant Effective and Tangent Effective Formulae

Whitson distinguishes two common effective decline formulations:

### Secant effective decline
Also called **effective hyperbolic decline**:

$$
d_{sec} = 100\left(1-(a_i b + 1)^{-1/b}\right)
$$

### Tangent effective decline
Also called **effective exponential decline**:

$$
d_{tan} = 100\left(1-e^{-a_i}\right)
$$

where:
- $a_i$ = nominal annual decline
- $b$ = Arps exponent
- $d_{sec}$ and $d_{tan}$ are in %/yr

### Convert secant effective back to nominal
$$
a_i = \frac{1}{b}\left[(1-d_{sec}/100)^{-b}-1\right]
$$

### Convert tangent effective back to nominal
$$
a_i = -\ln(1-d_{tan}/100)
$$

> [!important] Practical interpretation
> - **Initial decline** is often communicated using **secant effective**
> - **Terminal decline** is often communicated using **tangent effective**
> - **Equations** should still use **nominal decline**

---

# 7. Initial Decline vs Terminal Decline

This distinction is critical.

## Initial decline
The initial decline is often discussed in terms of:
- first-year performance
- early hyperbolic shape
- actual finite decline over a period

In practice, this is often closest to **secant effective decline**.

### Why
Because engineers commonly ask:

> “What was the initial annual decline?”

and usually mean:

> “How much did the rate actually fall over the first year?”

That is a secant-style question.

---

## Terminal decline
Terminal decline is usually the limiting decline used once the forecast transitions into an exponential tail.

In practice, terminal decline is most naturally interpreted as:

> **annual tangent effective decline on the exponential tail**

### Why
Because the terminal segment is generally treated as:
- exponential
- local-slope-defined
- a limiting decline condition

This is also consistent with Whitson’s mixed decline-rate convention.

---

# 8. Whitson Mixed Effective Convention

Whitson notes a practical **mixed effective** decline convention:

- **initial effective decline** interpreted as **secant effective**
- **limiting decline** interpreted as **tangent effective**

This is a very practical convention because it matches how many engineers already think.

### Initial decline
“How much did it actually fall over a year?”  
? **secant effective**

### Terminal decline
“What annual exponential tail decline am I imposing?”  
? **tangent effective**

---

# 9. Terminal Decline: Best Practical Interpretation

If someone says:

> “Use 8% terminal decline”

the safest practical interpretation is:

> **8%/yr tangent effective terminal decline on the exponential tail**

Then convert that to nominal for the actual math.

---

## Example: terminal decline conversion
If terminal decline is:

$$
d_{term} = 8\% = 0.08
$$

and you interpret that as tangent effective annual decline, the corresponding nominal exponential decline is:

$$
a_{term} = -\ln(1-0.08)=0.08338 \text{ /yr}
$$

That nominal value is what should go into the exponential-tail equations.

---

## Another example: 10% terminal decline
If:

$$
d_{term}=10\%
$$

then:

$$
a_{term}=-\ln(0.90)=0.10536 \text{ /yr}
$$

---

# 10. Modified / Limited Decline Workflows

In limited or modified decline:
- early behavior may be hyperbolic
- late behavior transitions to exponential
- limiting decline is often entered as an effective annual decline
- then internally converted to nominal exponential decline

This is exactly why terminal decline assumptions must be documented carefully.

See:
- [[Modified Hyperbolic (Robertson)]]
- [[DCA Assumptions Library]]

---

# 11. Software Convention Differences

Different software packages can report decline parameters differently.

Whitson explicitly provides a cross-software convention comparison, and this is very useful in practice.

## Why this matters
A fit exported from one package may not look identical in another unless you know:
- whether decline is nominal or effective
- whether effective means secant or tangent
- whether annualized conventions are preserved correctly
- how limiting decline is handled internally

Harmony’s documentation also reinforces the importance of distinguishing nominal and effective decline, especially in modified hyperbolic workflows.

---

# 12. Recommended Documentation Style

Whenever you document a decline assumption, write it in full.

## Good examples
- **Initial decline = 75%/yr secant effective**
- **Terminal decline = 8%/yr tangent effective**
- **Initial nominal decline = 1.25 /yr**
- **Terminal decline converted internally to nominal exponential decline**
- **Dlim = 10%/yr tangent effective**

## Bad examples
- “Di = 75%”
- “terminal decline = 8%”
- “a = 0.08”
- “effective decline” without saying secant or tangent

---

# 13. Recommended Conventions for This Vault

## Initial decline
Unless explicitly stated otherwise, if communicating an initial decline percentage for an unconventional well, use:

> **annual secant effective decline**

because that usually best reflects the actual observed drop over the first year.

---

## Terminal decline
Unless explicitly stated otherwise, if communicating terminal decline for modified decline forecasting, use:

> **annual tangent effective decline on the exponential tail**

and convert to nominal before calculation.

---

## In equations
Use **nominal decline** in the equations.

---

## In notes and case studies
Use **effective decline** only if you specify:
- secant or tangent
- annual / monthly / daily
- initial or terminal

---

# 14. Practical Conversion Summary

## Exponential nominal ? effective
$$
d = 1 - e^{-a}
$$

$$
a = -\ln(1-d)
$$

---

## Nominal time-unit conversion
$$
a_{yr}=12a_{mo}
$$

$$
a_{yr}=365.25a_{day}
$$

$$
a_{mo}=\frac{a_{yr}}{12}
$$

$$
a_{day}=\frac{a_{yr}}{365.25}
$$

---

## Recommended interpretation summary

| Quantity | Preferred interpretation |
|---|---|
| Initial decline percentage | annual **secant effective** |
| Terminal decline percentage | annual **tangent effective** |
| Decline in equations | **nominal** |
| Hyperbolic early decline communication | secant effective is usually more intuitive |
| Exponential tail communication | tangent effective is usually more appropriate |

---

# 15. Common Mistakes

> [!danger] Common mistakes
> 1. comparing nominal decline from one tool with effective decline from another
> 2. saying “8% terminal decline” without defining the convention
> 3. converting effective decline across time units as if it were nominal
> 4. assuming all “effective decline” means the same thing
> 5. documenting the number but not whether it is initial or terminal
> 6. mixing secant initial decline and tangent terminal decline without saying so
> 7. exporting/importing between software without checking convention compatibility

---

# 16. Bottom Line

> [!important] The phrase “effective decline” is incomplete by itself.
> Always specify:
> 1. nominal or effective
> 2. if effective: secant or tangent
> 3. daily / monthly / yearly
> 4. initial or terminal

## Safe practical defaults for this vault
- **Initial decline** ? annual **secant effective**
- **Terminal decline** ? annual **tangent effective**
- **Math implementation** ? convert to **nominal** before using in equations

---

## Related Notes
- [[Arps Equations]]
- [[Modified Hyperbolic (Robertson)]]
- [[DCA Assumptions Library]]
- [[DCA Method Selection Guide]]
- [[Oil vs Gas vs BOE Decline Analysis]]