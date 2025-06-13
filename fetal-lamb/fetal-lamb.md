---
desc: Fetal lamb movements
rows: 240
cols: 1
ext: txt
code: "scan('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/fetal-lamb/fetal-lamb.txt')"
---

### Description

In a study of breathing and body movements in fetal lambs designed to examine
possible changes in the amount and pattern of fetal activity during the last
two-thirds of gestation, the numbers of movements by a fetal lamb observed
through ultrasound were recorded. Changes in activity may be due to physical
factors such as reduction in amniotic fluid volume and empty space within the
uterus, or the development of the central nervous system.

This data set contains one particular sequence of counts from a single fetal
lamb; it is a popular data set in the hidden Markov model literature.

### Variables

This is a "1D" (vector) data set. The values are the number of movements over
240 consecutive 5-second intervals.

### Reference

The data was originally described in

> Leroux BG and Puterman ML (1992). Maximum-penalized-likelihood estimation for independent and Markov-dependent mixture models. *Biometrics*, **48**: 545–558. <https://doi.org/10.2307/2532308>

I obtained the data from the [label.switching](https://cran.r-project.org/package=label.switching) R package.
