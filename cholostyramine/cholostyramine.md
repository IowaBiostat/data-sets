---
desc: Impact of compliance on cholesterol reduction in cholostyramine trial
rows: 164
cols: 2
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/cholostyramine/cholostyramine.txt')"
---

### Description

This data comes from a clinical trial investigating whether the drug cholostyramine lowered blood cholesterol levels. The men were supposed to take six packets of cholostyramine per day, but many actually took much less.

### Variables

* `Compliance`: Percentage of the intended dose actually taken (as measured by pill counts)
* `Improvement`: Decrease in cholesterol from the beginning to the end of the trial (mg/dL)

### Reference

> Efron B and Feldman D. (1991). Compliance as an Explanatory Variable in Clinical Trials. *Journal of the American Statistical Association*, **86**:9-17.
