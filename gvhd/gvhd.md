---
desc: Time until graft vs. host disease in bone marrow transplant recipients
rows: 64
cols: 5
ext: txt
code: "read.delim('https://github.com/IowaBiostat/data-sets/raw/main/gvhd/gvhd.txt')"
---

### Description

Aplastic anemia is a condition in which the bone marrow produces an insufficient number of new blood cells.  In this study, patients with severe aplastic anemia were given a bone marrow transplant from a compatible family member and followed from the time of transplantation until the development of severe (life threatening) graft-versus-host disease (GVHD).  GVHD is a complication of bone marrow transplantation in which the immune cells produced by the new bone marrow recognize the recipient as a foreign body and mount an attack.  To ward off GVHD, the recipients received one of two drug combinations: methotrexate alone (MTX) or methotrexate plus cyclosporine (MTX+CSP).  The goal of the study is to determine whether treatment affected the occurrence of GVHD.

### Variables

* `Group`: Treatment group (MTX, MTX+CSP)
* `Time`: Time on study (days)
* `Status`: Event indicator for GVHD (1=GVHD, 0=No observed GVHD while on study)
* `LAF`: Whether (LAF=1) or not (LAF=0) the patient was assigned to a laminar airflow isolation room.  Restricting laminar airflow helps to maintain a sterile environment.
* `Age`: The patient's age (in years) at the time of transplantation

### Reference

I obtained the data from

> Kalbfleisch JD and Prentice RL (2002). *The Statistical Analysis of Failure Time Data (2nd edition)*, Wiley.

The original study appears in

> Storb R, Deeg HJ, Farewell V, Doney K, Appelbaum F, Beatty P, Bensinger W, Buckner CD, Clift R, and Hansen J (1986). Marrow transplantation for severe aplastic anemia: methotrexate alone compared with a combination of methotrexate and cyclosporine for prevention of acute graft-versus-host disease.  *Blood*, **68**: 119-125.
