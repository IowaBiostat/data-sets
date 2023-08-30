---
desc: Clinical trial of 6-MP in children with acute leukemia
rows: 42
cols: 5
ext: txt
---

### Description

This data comes from one of the earliest randomized clinical trials of a chemotherapuetic agent, 6-mercaptopurine (6-MP).  The trial was conducted across 11 American hospitals, and involved children with acute leukemia that experienced a complete or partial remission (i.e, all/most of the signs of the disease had disappeared) of their leukemia following treatment with the drug prednisone.  The trial was conducted by matching pairs of patients at a given hospital by remission status (complete or partial) and randomizing within the pair to either a 6-MP or placebo. Patients were followed until their leukemia returned (relapse) or until the end of the study.

### Variables

* `Pair`: An ID indicating which patients were paired with either other
* `Time`: Time on study (weeks)
* `Delta`: Indicator function for whether the patient experienced a relapse while on study
* `Group`: Treatment group (Placebo, 6MP)
* `RemStat`: Remission status (Partial, Complete)

### Reference

The original study is reported in

> Freireich EJ, Gehan E, Frei E, Schroeder LR, Wolman IJ, Anbari R, Burgert EO, Mills SD, Pinkel D, Selawry OS, Moon JH, Gendel BR, Spurr CL, Storrs R, Haurani F, Hoogstraten B, and Lee S (1963).  The Effect of 6-Mercaptopurine
on the Duration of Steroid-Induced Remissions in Acute Leukemia: A Model for
Evaluation of Other Potentially Useful Therapy. *Blood*, **21**: 699-716.

I obtained the data from

> Klein JP and Moeschberger ML (1997) *Survival Analysis Techniques for Censored and Truncated Data*, Springer.
