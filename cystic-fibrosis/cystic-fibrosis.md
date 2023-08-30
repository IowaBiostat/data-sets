---
desc: Reduction in forced vital capacity for cystic fibrosis patients
rows: 14
cols: 2
ext: txt
---

### Description

Cystic fibrosis is a genetic disease affecting the proper regulation of sweat, digestive fluids, and mucus.  It affects many organs, but its most serious symptom is the buildup of mucus in the lungs, leading to airway blockage and difficulty breathing.

This data comes from a crossover study of the drug amiloride to investigate whether the drug helps to improve air flow in the lungs and delay the decline in lung function typically associated with the disease.  The study involved a sample of 14 patients.  Researchers measured the loss of lung function over a 25-week period in which the patients took amiloride and the corresponding loss over a 25-week period in which the patients were assigned to treatment.  The order of treatment was determined randomly, and there was a two-week washout period in between treatment cycles.

To measure lung function, the researchers used forced vital capacity (FVC), which is the volume of air a person can expel from the lungs in 6 seconds.  To measure the loss of lung function, the researchers subtracted the final FVC from the initial FVC:

Reduction in FVC = Initial FVC - Final FVC

The data set contains each patient's reduction in FVC for each treatment period.

### Variables

* <tt>Drug</tt>: Reduction in forced vital capacity while on amiloride (mL)
* <tt>Placebo</tt>: Reduction in forced vital capacity while on placebo (mL)

### Reference

The original data is from

> Knowles MR, Church NL, Waltner WE, Yankaskas JR, Gilligan P, King M, Edwards LJ, Helms RW, and Boucher RC (1990).  A pilot study of aerosolozed amiloride for the treatment of lung disease in cystic fibrosis.  <i>The New England Journal of Medicine</i>, <b>322</b>: 1189-1194.

I obtained the data from:

> Pagano M and Gauvreau K (2000).  <em>Principles of Biostatistics, 2nd edition</em>. Duxbury.

