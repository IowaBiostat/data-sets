---
desc: Response of ER+ breast cancer cell lines to estrogen
rows: 8
cols: 12625
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/Scholtens2004/Scholtens2004.rds'))"
---

### Description

Breast cancers are often classified according to the status of their hormone receptors. A cancer is called estrogen-receptor-positive, or ER+, if it has receptors for estrogen. This suggests that the cancer cells, like normal breast cells, may receive signals from estrogen that could promote their growth.

This data set comes from a study of an ER+ breast cancer cell line called MCF7. In the study, they exposed four samples to estrogen, and then measured gene expression after 10 hours for two samples and 48 hours for the other two. They left another four samples untreated, again measuring expression at 10 and 48 hours. The investigators in this experiment were interested in identifying genes that respond to estrogen to ER+ breast cancer cells, and in further separating those genes into "early responders" and "later responders". Genes that respond early (i.e., within 10 hours) are likely to be directly affected by the estrogen, while those that respond later are more likely to act through intermediate signaling pathways.

### Elements

* `Y`: Gene expression measurements, normalized and on the log<sub>2</sub> scale. Here, each row represents a gene.
* `expCond`: A data frame listing the experimental conditions in each sample with respect to `Estrogen` (absent, present) and `Time` (in hours).

### Reference

I obtained the raw data from the [estrogen](http://bioconductor.org/packages/release/data/experiment/html/estrogen.html) package and normalized it using [rma](http://bioconductor.org/packages/release/bioc/html/affy.html) with annotations from [hgu95av2.db](http://bioconductor.org/packages/release/data/annotation/html/hgu95av2.db.html). The original reference is

> Scholtens D, Miron A, Merchant FM, Miller A, Miron PL, Iglehart JD and Gentleman R (2004). Analyzing factorial designed microarray experiments. *Journal of Multivariate Analysis*, **90**: 19-43.
