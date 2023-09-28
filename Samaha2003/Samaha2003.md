---
desc: Effect of Low-Carb and Low-Fat Diets on triglyceride levels
rows: 79
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/Samaha2003/Samaha2003.txt')"
---

### Description

The study randomly assigned 132 severely obese subjects to either a carbohydrate-restricted (low-carb) diet or a fat-restricted (low-fat) diet.  A number of outcomes were measured, including weight loss, but this data set includes information only on their triglyceride levels (high triglycerides are a marker of metabolic syndrome, a common complication of obesity).

The study lasted for 6 months; seventy-nine subjects completed the study.

### Variables

* `Group`: Randomly assigned diet group (LowFat, LowCarb)
* `Baseline`: Triglyceride levels at beginning of study (mg/dL)
* `Completion`: Triglyceride levels at end of study (mg/dL)

### Reference

I was unable to get the original data; this data is simulated from a lognormal distribution, with summary statistics matching those reported in the original study.

> Samaha F, Iqbal N, Seshadri P, Chicano K, Daily D, McGrory J, Williams T, Williams M, Gracely E, and Stern L. (2003). A low-carbohydrate as compared with a low-fat diet in severe obesity.  *New England Journal of Medicine*, **348**: 2074-2081.
