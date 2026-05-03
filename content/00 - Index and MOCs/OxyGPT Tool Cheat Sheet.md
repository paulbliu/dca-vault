

**Created:** 2026-04-29
**Tags:** #oxygpt #tools #workflow #reference

## Purpose
This note summarizes the main OxyGPT tools/capabilities available in chat, what they do, and example prompts to use later.

---

## Quick Summary Table

| Tool / Capability | What it does | Best for | Example prompt |
|---|---|---|---|
| **SQL Query Tool** | Queries Oxy SQL databases | production history, metadata, surveillance data | “Pull monthly oil production for WELL X” |
| **Python Execution Tool** | Analyzes files/data and generates outputs | DCA, charts, Excel files, data cleaning | “Fit Arps and Duong to this well and make a chart” |
| **PI Query Tool** | Retrieves PI historian time-series data | pressures, temperatures, runtime, telemetry | “Get casing pressure for WELL X over the last 30 days” |
| **Well Matcher Tool** | Resolves well names to APIs / matched well identity | fuzzy well-name lookup | “Find the API for CHERRY STATE 56-2-13-1 E 31H” |
| **Knowledge Base Search** | Searches internal Oxy docs / KBs | schema lookup, policies, technical references | “Find the schema for monthly allocated volumes” |
| **Survey Visualization Tool** | Visualizes well survey trajectories | directional wells, laterals, survey review | “Visualize the survey for API X” |
| **Web Search Tool** | Searches public web | current events, public references, recent developments | “Find recent SPE references on unconventional DCA” |
| **Image Tools** | Generate or edit images | diagrams, concept visuals | “Create a simple diagram of transient to BDF flow” |
| **Chat / File Search** | Searches prior chats / attached files | continue prior work, reopen references | “Find my earlier chat about DCA case studies” |

---

## 1. SQL Query Tool

### What it does
Queries Oxy databases in read-only mode.

### Typical use cases
- monthly production history
- daily production rates
- completion metadata
- surveillance tables
- well lists by asset / reservoir / status

### Best for
Structured data in Oxy SQL systems.

### Example prompts
- “Pull monthly oil, gas, and water production for API 42301349600000”
- “Find active horizontal wells in Midland Basin with 3+ years of history”
- “Get completion metadata for SOUTH CURTIS RANCH 401SP”
- “Show the top gas-producing active horizontals in Texas Delaware”

### Notes
- SQL workflow should start with schema lookup when table/view structure is unclear
- Results can be passed into Python for deeper analysis

---

## 2. Python Execution Tool

### What it does
Runs Python code in a sandboxed environment.

### Typical use cases
- DCA fitting
- data cleaning
- charting
- Excel generation
- file transformations
- stats / forecasting
- workbook creation

### Best for
Anything analytical or file-based.

### Example prompts
- “Fit Arps, Modified Hyperbolic, Duong, SEPD, and PLE to this well”
- “Make a PNG chart comparing EUR by method”
- “Create an Excel workbook with fit summary and forecasts”
- “Analyze this uploaded spreadsheet and summarize the trends”

### Notes
- best tool for `.csv` and `.xlsx`
- also handles outputs from SQL/PI
- can generate downloadable artifacts like PNG and XLSX

---

## 3. PI Query Tool

### What it does
Retrieves time-series historian data from OSIsoft PI.

### Typical use cases
- casing pressure
- tubing pressure
- flowline pressure
- runtime hours
- gas lift injection
- ESP metrics
- temperatures

### Best for
High-frequency operational time-series data.

### Example prompts
- “Get flowline pressure for WELL X over the last 7 days”
- “Pull rod pump runtime hours for the last 90 days”
- “Show hourly casing pressure for this well”
- “Compare PI pressure to production behavior over the last month”

### Notes
- PI paths must be resolved correctly
- often combined with SQL and Python

---

## 4. Well Matcher Tool

### What it does
Fuzzy-matches well names and returns likely API matches.

### Typical use cases
- incomplete well names
- misspelled well names
- confirming the exact well identity before querying data

### Best for
Finding the correct well when the name is ambiguous.

### Example prompts
- “Find the API for SILVERTIP 76-16 UNIT Q 2H”
- “Match CHERRY STATE 56-2-13-1 E 31H”
- “Resolve this well name before pulling PI data”

### Notes
- especially useful before PI queries
- reduces risk of pulling the wrong well

---

## 5. Knowledge Base Search

### What it does
Searches internal Oxy knowledge bases and attached files.

### Typical use cases
- schema lookup
- policy lookup
- internal documentation
- ServiceNow articles
- technical references

### Best for
Finding internal written knowledge.

### Example prompts
- “Find the schema for PRODODS.Monthly_Allocated_Volumes”
- “Search Oxy docs for decline curve analysis references”
- “Find guidance on legal/policy handling for data”
- “Look up internal help info for accessing data sources”

### Notes
- very useful before SQL when schema is uncertain
- also useful for policy / IT / process questions

---

## 6. Survey Visualization Tool

### What it does
Generates visualizations for well survey data.

### Typical use cases
- directional survey review
- lateral trajectory visualization
- comparing well paths
- 3D/2D survey plots

### Best for
Directional wells and survey interpretation.

### Example prompts
- “Visualize the survey for this API”
- “Show the lateral path for this well”
- “Compare these two well trajectories”

### Notes
- especially useful for unconventional horizontal wells

---

## 7. Web Search Tool

### What it does
Searches public web content.

### Typical use cases
- current events
- recent public technical references
- public documentation
- new AI / software developments

### Best for
Anything time-sensitive or public.

### Example prompts
- “Find recent SPE articles on unconventional DCA”
- “What are the latest developments in AI for production forecasting?”
- “Search current public guidance on decline analysis methods”

### Notes
- use this when recency matters
- separate from Oxy internal knowledge bases

---

## 8. Image Tools

### What they do
Generate or edit images.

### Typical use cases
- concept diagrams
- illustrative visuals
- simple explanatory graphics

### Example prompts
- “Create a diagram showing transient flow to BDF”
- “Generate a clean concept image for decline curve families”

### Notes
- less critical than SQL/Python for engineering work
- useful for presentation-style visuals

---

## 9. Chat / File Search

### What it does
Searches previous conversations and files attached to knowledge.

### Typical use cases
- revisiting earlier work
- finding prior analyses
- reopening a previous conversation
- locating attached reference documents

### Example prompts
- “Find my earlier chat on Midland Basin case studies”
- “Search my previous discussions about DCA”
- “Open the file I used for the first case study”

---

## Best Workflows for Petroleum / DCA Use

### A. Production case study workflow
```text
Well Matcher (if needed)
? SQL Query
? Python analysis
? PNG/XLSX output
? Obsidian documentation
```

### B. Pressure + production workflow
```text
Well Matcher
? SQL metadata
? PI query
? Python merge/analysis
? chart/report
```

### C. Documentation workflow
```text
Knowledge Base Search
? Read details
? SQL or writing task
? Obsidian note
```

---

## Most Useful Tools for My DCA Vault
If working on production engineering / DCA, the highest-value tools are:

1. **SQL Query Tool**
2. **Python Execution Tool**
3. **PI Query Tool**
4. **Well Matcher Tool**
5. **Knowledge Base Search**

---

## Practical Prompt Templates

### Pull production history
- “Pull monthly oil, gas, and water production for API X”

### Build a case study
- “Create a DCA case study for WELL X using multiple methods”

### Compare methods
- “Fit Arps, Modified Hyperbolic, Duong, SEPD, and PLE to this well”

### Pressure + rate integration
- “Combine PI casing pressure with monthly production and look for changes in decline behavior”

### Type well idea
- “Find 20 analog wells in Wolfcamp A and build a normalized type-well comparison”

### Survey use
- “Visualize the directional survey for API X”

### Knowledge lookup
- “Find the schema for this OXYODS table before querying it”

---

## Important Limitations
OxyGPT can:
- query data
- analyze files
- generate charts/workbooks
- summarize knowledge
- help draft notes

OxyGPT cannot:
- directly write into my local Obsidian vault
- email files
- schedule future jobs
- bypass required data workflows
- replace full reserves governance or formal surveillance review

---

## Related Notes
- [[Case Study Workflow - OxyGPT DCA]]
- [[Case Study Index]]