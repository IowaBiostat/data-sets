---
desc: Gene expression study of BRCA tumors in breast cancer patients
rows: 21
cols: 3226
ext: txt
---

### Description

Many cases of hereditary breast cancer are due to mutations in either the BRCA1 or the BRCA2 gene.  A team of researchers led by the cancer genetics branch of the National Cancer Institute carried out this landmark study of gene expression in breast tumors to compare gene expression profiles in these two types of tumors.

The data set `hedenfalk.txt` is organized somewhat differently than most other data sets on this site.  All entries are gene expression ratios of the fluorescent intensity (proportional to the gene expression level) from a tumor sample (BRCA1, BRCA2, or Sporadic) divided by the fluorescent intensity from a common reference sample.  Information on the gene and tumor type are contained in the row and column names, respectively.  See below for details.

In the original paper, there was one subject, "Patient 20", with an aberrant mutation type that may have been misclassified as sporadic due to an unrecognized BRCA1 mutation.  This patient has been removed from this version of the data set.

### Variables

* As mentioned above, all entries are gene expression ratios
* Row names: Gene ID, given as an IMAGE clone ID.  To learn more about the gene, you can use this as a search term at [http://www.ncbi.nlm.nih.gov/nucest](http://www.ncbi.nlm.nih.gov/nucest).  For example, to look up gene ID 22293, type in `IMAGE:22293` and you will learn that this row corresponds to a gene called Uroporphyrinogen-III synthase.  There are a few instances where multiple rows belong to the same gene; because `R` does not allow duplicate row names, a `.1` was added to the duplicates; do not use this when querying databases.
* Column names: These denote tumor type: BRCA1, BRCA2, or Sporadic tumors (patients who have no family history of breast cancer).  Again, identifiers `.1`, `.2`, and so on denote the first, second, third, etc. patients in each group.

### Reference

> Hedenfalk I, Duggan D, Chen Y, Radmacher M, Bittner M, Simon R, Meltzer P, Gusterson B, Esteller M, Raffeld M, Yakhini Z, Ben-Dor A, Dougherty E, Kononen J, Bubendorf L, Fehrle W, Pittaluga S, Gruvberger S, Loman N, Johannsson O, Olsson H, Wilfond B, Sauter G, Kallioniemi OP, Borg A, and Trent J. (2001). Gene-Expression Profiles in Hereditary Breast Cancer.  *New England Journal of Medicine*, **344**: 539-548.

* [Raw data](http://research.nhgri.nih.gov/microarray/NEJM_Supplement/Images/nejm_brca_release.txt)
* [Additional description](http://research.nhgri.nih.gov/microarray/NEJM_Supplement/read_me.pdf)
