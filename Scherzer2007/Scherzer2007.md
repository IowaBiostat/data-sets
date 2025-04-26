---
desc: "Biomarkers for early detection of Parkinson's disease"
rows: 105
cols: 22283
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/Scherzer2007/Scherzer2007.rds'))"
---

### Description

The goal of the study was to try to identify biomarkers capable of identifying
people in the early stages of Parkinson's disease, before clinical symptoms
develop.

In the study, blood samples were extracted from 50 patients with Parkinson's
disease, predominantly in the early stages of their disease, as well as 55
controls, many of which with other neurological diseases such as Alzheimer's
disease that may be misclassified as Parkinson's.

For each patient, the expression levels of 22,283 genes were measured using
microarrays.

### Elements

* `y`: Case/control status (Case, Control)
* `X`: Gene expression measurements

### Annotation

* Rows of X, and elements of y, are annotated with arbitrary, matching sample labels.
* Columns of X are labeled with the Gene Symbol.

### Reference

> Scherzer CR, Eklund AC, Morse LJ, Liao Z, Locascio JJ, Fefer D, Schwarzschild MA, Schlossmacher MG, Hauser MA, Vance JM, Sudarsky LR, Standaert DG, Growdon JH, Jensen RV, and Gullans SR (2007). Molecular markers of early Parkinson's disease based on gene expression in blood. *Proceedings of the National Academy of Sciences*, **104**: 955-960. <https://doi.org/10.1073/pnas.0610204104>.
