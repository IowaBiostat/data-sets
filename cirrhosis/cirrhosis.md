---
desc: Does penicillamine prevent liver failure in patients with primary biliary cirrhosis
rows: 312
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/cirrhosis/cirrhosis.txt')"
---

### Description

This data is from a Mayo Clinic trial in primary biliary cirrhosis (PBC) of the liver conducted between 1974 and 1984.  A total of 312 PBC patients, referred to Mayo Clinic during that ten-year interval, met eligibility criteria and participated in the randomized placebo controlled trial of the drug D-penicillamine.

### Variables

* `Time`: Time on study (years)
* `Status`: Event indicator (0=censored, 1=patient required a liver transplant, 2=patient died)
* `Group`: Treatment group (Penicillamine, Placebo)

### Reference

This data set is a simplified version of the `pbc` data set from the `survival` package in `R`. The original data is from:

> Dickson  ER, Fleming TR, Wiesner RH, Baldus WP, Fleming CR, Ludwig J, and McCall JT (1985). Trial of penicillamine in advanced primary biliary cirrhosis.  *New England Journal of Medicine*, **312**: 1011-1015.
