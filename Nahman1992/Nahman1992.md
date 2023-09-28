---
desc: Time to exit-site infection in dialysis patients
rows: 119
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/Nahman1992/Nahman1992.txt')"
---

### Description

Patients with renal insufficiency require a procedure called dialysis, which is essentially an artificial replacement for their lost kidney function.  One method of dialysis is known as peritoneal dialysis, which involves connecting a tube containing sterile solution into the peritoneum, thereby allowing diffusion to gradually remove waste products from the body.

The tube can be placed using two methods, surgically or percutaneously (i.e., using a needle puncture).  One complication that can arise with peritoneal dialysis is infection of site where the tube enters and exits the body (this known as the exit site).  The goal of this study is to determine whether the time until (first) exit-site infection depends on the method by which the dialysis tube was placed.

### Variables

* `Time`: Time on study (months)
* `Delta`: Indicator function for whether the patient experienced an exit-site infection while on study
* `Type`: Method by which the dialysis tube was placed (Surgical, Percutaneous)

### Reference

The original study is reported in

> Nahman NS, Middendorf DF, Bay WH, McElligott R, Powell S, and Anderson J (1992). Modification of the Percutaneous Approach to Peritoneal Dialysis Catheter Placement Under Peritoneoscopic Visualization: Clinical Results in 78 Patients. *Journal of The American Society of Nephrology*, **3**: 103-107.

I obtained the data from

> Klein JP and Moeschberger ML (1997) *Survival Analysis Techniques for Censored and Truncated Data*, Springer.

