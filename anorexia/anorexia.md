---
desc: Change in weight for anorexia patients
rows: 72
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/anorexia/anorexia.txt')"
---

### Description

Paired study, each row is an individual girl.

Coming soon....

### Variables

* `Treat`: Treatment group (Control, CBT = Cognitive behavioral therapy, FT = family treatment)
* `Prewt`: Weight of patient at baseline (lbs)
* `Postwt`: Weight of patient at end of study period (lbs)

### Reference

I obtained the data from the [MASS](https://cran.r-project.org/package=MASS) package. Original source is

> Hand DJ, Daly F, McConway L, Lunn D, and Ostrowski E. *A Handbook of Small Data Sets*. Chapman & Hall. Data set 285.
