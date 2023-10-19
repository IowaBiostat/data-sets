---
desc: Gene expression in leukemia patients
rows: 72
cols: 7129
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/Gode2011/Gode2011.rds'))"
---

### Description

This data set consists of 47 patients with acute lymphoblastic leukemia (ALL) and 25 patients with acute myeloid leukemia (AML). Each of the 72 patients had bone marrow samples obtained at the time of diagnosis.  Gene expression measurements for the samples were taken using Affymetrix Hgu6800 chips, resulting in 7129 measurements per patient.

Of the two diseases, AML has a considerably worse prognosis: only 26% survive at least 5 years following diagnosis, compared to 68% for ALL ([source](http://seer.cancer.gov)).

### Elements

* `y`: Type of leukemia (ALL, AML)
* `X`: Gene expression measurements, normalized and on the log<sub>2</sub> scale

### Annotation

* Rows of X, and elements of y, are annotated with arbitrary, matching sample labels.
* Columns of X are labeled with the Gene Symbol.  In some cases, the probe could not be matched to a gene symbol; in those cases, the column is labeled with the Affymetrix probe label instead.  This happens for artificial spike-in probes and probes where it is uncertain which, if any gene, they measure.

### Reference

I obtained the data from the [golubEsets](https://www.bioconductor.org/packages/golubEsets) package, used the [vsn](http://bioconductor.org/packages/vsn) package for normalization, and the [hu6800.db](https://bioconductor.org/packages/hu6800.db/) package for annotation.  The original reference is:

> Golub TR, Slonim DK, Tamayo P, Huard C, Gaasenbeek M, Mesirov JP, Coller H, Loh ML, Downing JR, Caligiuri MA, Bloomfield CD, and Lander ES (1999).  Molecular classification of cancer: class discovery and class prediction by gene expression monitoring.  *Science*, **286**:531-537.
