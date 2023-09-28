---
desc: Plasma prostaglandin E in patients with and without hypercalcemia
rows: 21
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/hypercalcemia/hypercalcemia.txt')"
---

### Description

This data comes from a study of plasma prostaglandin E (iPGE) levels in cancer patients with and without hypercalcemia. The paper reports "mean" levels of iPGE and serum calcium, implying that multiple measurements were taken, although we are not told how many measurements were taken or provided the raw measurements.

### Variables

* `Hypercalcemic`: Whether or not the patient was considered hypercalcemic (Yes, No)
* `iPGE`: Mean plasma prostaglandin E levels, in pg/mL
* `Calcium`: Mean serum calcium levels, in ml/dL

### Reference

The original data is from

> Robertson RP, Baylink DJ, Metz SA, and Cummings KB (1976). Plasma prostaglandin E in patients with cancer with and without hypercalcemia. *Journal of Clinical Endocrinology and Metabolism*, **43**: 1330-1335.

I obtained the data from

> van Belle G, Fisher LD, Heagerty PJ, and Lumley T (2004). Biostatistics: A Methodology for the Health Sciences. Wiley.
