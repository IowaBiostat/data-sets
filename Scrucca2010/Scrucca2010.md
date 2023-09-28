---
desc: Relapse and death in acute leukemia patients following stem cell transplantation
rows: 177
cols: 7
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/Scrucca2010/Scrucca2010.txt')"
---

### Description

The doses of chemotherapy drugs that patients with leukemia receive often have serious side effects involving the immune system -- the drugs kill cancerous white blood cells, but also healthy white blood cells.  This leads to a number of complications including life-threatening infections, bleeding, and other problems caused by low blood cell counts.  One remedy for this is Hematopoietic stem cell transplantation (HSCT), or bone marrow transplant.  This allows physicians to give high doses of chemotherapy than could normally be given, then after the treatment is finished, the patient gets an infusion of blood-forming stem cells to restore their bone marrow.

Two outcomes of interest, both bad, are recurrence of cancer and transplant-related death.  This data set contains follow-up data on both outcomes in a group of patients with acute leukemia.

### Variables

* `Time`: Follow-up time (months)
* `Status`: Indicator for what happened at end of follow-up (0=censored, 1=relapse, 2=death without relapse)
* `Sex`: Male (M) or Female (F)
* `Disease`: Acute lymphoblastic leukemia (ALL) or acute myeloid leukemia (AML)
* `Phase`: Status at transplantation: Relapse, first complete remission (CR1), second complete remission (CR2), or third complete remission (CR3)
* `Age`: Age in years at baseline
* `Source`: Source of stem cells, either peripheral blood (PB) or a combination of peripheral blood and bone marrow (BM+PB)

### Reference

> Scrucca L, Santucci A, and Aversa F. (2010). Regression modeling of competing risk using R: an in depth guide for clinicians. *Bone Marrow Transplantation*, **45**: 1388-1395.

Raw data is available [here](http://www.stat.unipg.it/luca/R).
