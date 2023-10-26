---
desc: Case-control study of prostate cancer
rows: 102
cols: 12600
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/Singh2002/Singh2002.rds'))"
---

### Description

Prostate tumors are among the most heterogeneous of cancers, both histologically and clinically. Gene expression data was collected on samples from 102 patients who underwent a prostatectomy. Of the samples, 52 are from tumors and 50 are from healthy tissue.

### Elements

* `y`: Classification of sample (normal, tumor)
* `X`: Gene expression measurements, normalized and on the log<sub>2</sub> scale

### Annotation

* Rows of X, and elements of y, are annotated with matching sample labels.
* Columns of X are labeled with a GenBank ID. To see what gene a given ID belongs to, visit [http://www.ncbi.nlm.nih.gov/genbank](http://www.ncbi.nlm.nih.gov/genbank).

### Reference

I obtained the data from the authors at [https://portals.broadinstitute.org/cgi-bin/cancer/publications/view/75](http://www-genome.wi.mit.edu/MPR/prostate) and used the [vsn](http://bioconductor.org/packages/vsn) package for normalization. The original reference is:

> Singh D, Febbo PG, Ross K, Jackson DG, Manola J, Ladd C, Tamayo P, Renshaw AA, D'Amico AV, Richie JP, Lander ES, Loda M, Kantoff PW, Golub TR and Sellers WR (2002). Gene expression correlates of clinical prostate cancer behavior. *Cancer Cell*, **1**: 203-209.
