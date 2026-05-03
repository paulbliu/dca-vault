

## All Daily Notes
```dataview
LIST
FROM "05 - Daily Notes"
SORT file.name DESC
```

## Case Study Work
```dataview
LIST
FROM "05 - Daily Notes"
WHERE contains(file.outlinks, [[Case Study Index]])
   OR contains(file.outlinks, [[SILVERTIP 76-16 UNIT Q 2H - DCA Comparison]])
   OR contains(file.outlinks, [[SOUTH CURTIS RANCH 401SP - DCA Comparison]])
   OR contains(file.outlinks, [[CHERRY STATE 56-2-13-1 E 31H - Gas DCA Comparison]])
   OR contains(file.outlinks, [[PROWANT 18-11HZ NBRR - DJ Basin DCA Comparison]])
SORT file.name DESC
```

## Type Well Work
```dataview
LIST
FROM "05 - Daily Notes"
WHERE contains(file.outlinks, [[Type Well Index]])
   OR contains(file.outlinks, [[Type Well - Analog Workflow]])
   OR contains(file.outlinks, [[Type Well QA-QC Checklist]])
   OR contains(file.outlinks, [[Type Well Construction Example - Silvertip Wolfcamp]])
   OR contains(file.outlinks, [[Type Well Construction Example - Prowant Niobrara]])
SORT file.name DESC
```

## Paper / RNFD Work
```dataview
LIST
FROM "05 - Daily Notes"
WHERE contains(file.outlinks, [[RNFD Method - Working Notes]])
   OR contains(file.outlinks, [[New approach for decline curve analysis of unconventional fractured reservoirs - Paper Review]])
SORT file.name DESC
```