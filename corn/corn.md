---
desc: Darwin's corn experiment on cross-fertilization
rows: 15
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/corn/corn.txt')"
---

### Description

In 1876, Charles Darwin carried out an experiment concerning the height of corn plants. The seeds were from the same parents, but some seeds were produced from self-fertilized parents and some seeds were produced from cross-fertilized parents. Some seeds were planted in the same pot. Darwin hypothesized that cross-fertilization produced more robust and vigorous offspring.

### Variables

* `pot`: Which pot the corn was planted in (I/II/III/IV)
* `cross`: Height under cross-pollinated conditions (inches)
* `self`: Height under self-pollinated conditions (inches)

### Reference

I obtained the data from the [agridat](https://cran.r-project.org/package=agridat) package. The original source is

> Darwin C (1876). *The Effect of Cross- and Self-fertilization in the Vegetable Kingdom*. 2nd Ed. John Murray.
