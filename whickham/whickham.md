---
desc: Smoking versus survival among British women, based on 20 years of follow up
rows: 1314
cols: 3
ext: txt
---

### Description

This data set contains results from a survey of age and smoking status carried out in Whickham, a small town in northeast England. The survey was conducted in 1972-1974.  Twenty years later, a follow-up was conducted to determine whether the subjects were still alive or not.  This dataset contains only a subset of the original sample: women who were either current smokers or had never smoked.

### Variables

* `Smoking`: (Nonsmoker, Smoker)
* `Age`: (18-54, 55-64, 65-); age of woman at the time of the original 1972-1974 survey
* `Survival`: (Alive, Dead); whether the woman was alive or not at time of follow-up 20 years later

### Reference

I obtained the data from the `mosaic` package in `R`, who, in turn, obtained the data from:

> Appleton DR, French JM, Vanderpump MPJ (1996). Ignoring a covariate: an example of Simpson's paradox.  *The American Statistician*, 50:340-341.
