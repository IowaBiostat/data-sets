---
desc: Protein expression levels in immune cells
rows: 7466
cols: 11
ext: txt
---

### Description

Flow cytometry is a technique used to detect and measure a population of cells. In this experiment, 11 different proteins and lipids were measured at the level of individual cells for thousands of T cells in an effort to infer the causal relationships among them (i.e., their signaling network).

Phosphorylation is the most way for proteins to pass a signal along to other molecules; hence the emphasis on measuring phosphorylated molecules in this study.

### Variables

The concentration of all molecules is given on the log scale:

* `Var1`: Meaning (units)
* `Var2`: Meaning (Cat1, Cat2)

* `Raf`: Raf phosphorylated at S259.
* `Mek`: Mek1/mek2 phosphorylated at S217/S221.
* `Plcg`: Phospholipase C-gamma phosphorylated at Y783.
* `PIP2`: Phophatidylinositol 4,5-biphosphate.
* `PIP3`: Phophatidylinositol 3,4,5-triphosphate.
* `Erk`: Erk1/erk2 phosphorylated at T202/Y204.
* `Akt`: AKT phosphorylated at S473.
* `PKA`: Phosphorylation of of protein kinase A (3 sites)
* `PKC`: Phosphorylation of of protein kinase C at S660.
* `P38`: p38 MAPK phosphorylated at T180 and Y182
* `Jnk`: Jnk phosphorylated at T183 and Y185
 
### Reference

I obtained the data from the `gss` package in R. The original citation is

> Sachs K, Perez O, Pe'er D, Lauffenburger DA, and Nolan GP (2005). Causal protein-signaling networks derived from multiparameter single-cell data. *Science*, **308**: 523-529.
