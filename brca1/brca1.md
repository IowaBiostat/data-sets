---
desc: Breast cancer gene expression data from The Cancer Genome Atlas
rows: 536
cols: 17322
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/brca1/brca1.rds'))"
---

### Description

This data set comes from breast cancer tissue samples deposited to The Cancer
Genome Atlas (TCGA) project.  TCGA contains data on tumour samples were assayed
on several platforms; this data set compiles results obtained using Agilent mRNA
expression microarrays.

BRCA1 is the first gene identified that increases the risk of early onset breast
cancer.  Because BRCA1 is likely to interact with many other genes, including
tumor suppressors and regulators of the cell division cycle, it is of interest
to find genes with expression levels related to that of BRCA1, which we treat as
the outcome of this analysis. These genes may be functionally related to BRCA1
and are useful candidates for further studies.

Expression measurements of 17,814 genes from 536 patients; all expression
measurements are recorded on the log scale.  There are are 491 genes with
missing data, which we have excluded.

### Format

* `y`: Gene expression measurement for BRCA1
* `X`: Gene expression measurements for remaining genes
* `fData`: Additional information (chromosome and gene name) about the features

### Annotation

* Columns of X are labeled with the Gene Symbol.

### Reference

[The Cancer Genome Atlas](http://cancergenome.nih.gov).
