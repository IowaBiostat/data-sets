---
desc: Multiclass cancer prediction involving 14 tumor types
rows: 144
cols: 16063
ext: rds
code: "readRDS(url('https://github.com/IowaBiostat/data-sets/raw/main/Ramaswamy2001/Ramaswamy2001.rds'))"
---

### Description

The optimal treatment of cancer patients depends on establishing accurate diagnoses using clinical and histopathologic data. In some instances, particularly involving metastatic tumors, this is difficult to atypical clinical presentation or histopathology. The purpose of this study was to determine whether the diagnosis of common adult malignancies could be achieved purely by molecular classification.  The data consists of 218 tumor samples, spanning 14 common tumor types.  For each tumor, the expression of 16,063 genes were measured.

In addition to the 144 observations available for training, another 54 observations are available for testing.

### Format

* `y`: A 14-level factor indicating the type of tumor
* `X`: Gene expression measurement
* `y.test`: Same as above, but for independent testing
* `X.test`: Same as above, but for independent testing

### Annotation

* The object `fData` contains the associated gene names and gene symbols for the (mapped) probes in `X`.  Rows of `fData` correspond to columns of `X`, and are named accordingly.

### Reference

I (Patrick Breheny) obtained the raw data from [Trevor Hastie](https://web.stanford.edu/~hastie/glmnet/glmnetData); I am not sure what sort of preprocessing/normalization was done to it.  I added the annotation, both with respect to the tumor types and the feature data.

Original citation:

> Ramaswamy S, Tamayo P, Rifkin R, Mukherjee S, Yeang C, Angelo M, Ladd C, Reich M, Latulippe E, Mesirov J and others (2001). Multiclass cancer diagnosis using tumor gene expression signatures. *Proceedings of the National Academy of Sciences*, **98**: 15149-15154.
