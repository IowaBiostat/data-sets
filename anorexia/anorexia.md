---
desc: Change in weight for anorexia patients
rows: 72
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/anorexia/anorexia.txt')"
---

### Description

The study examines the efficacy of three different treatment approaches for anorexia nervosa, a serious eating disorder characterized by an abnormally low body weight and an intense fear of gaining weight. Two different approaches were considered and compared to a control: Family Therapy, which focuses on improving communication and interactions within the family to support the patient's recovery, and Cognitive Behavioral Therapy, a psychiatric approach that addresses dysfunctional emotions and behaviors through systematic procedures.

Each approach was tested on different groups of girls, with paired data collected on their weights before and after the therapy. The primary goal of the study is to determine which treatment is most effective at promoting weight gain in these patients.

### Variables

* `Treat`: Treatment group (Control, CBT = Cognitive behavioral therapy, FT = family treatment)
* `Prewt`: Weight of patient at baseline (lbs)
* `Postwt`: Weight of patient at end of study period (lbs)

### Reference

I obtained the data from the [MASS](https://cran.r-project.org/package=MASS) package. Original source is

> Hand DJ, Daly F, McConway L, Lunn D, and Ostrowski E. *A Handbook of Small Data Sets*. Chapman & Hall. Data set 285.

(note that the original source incorrectly claims that the weights are in kg instead of lbs)
