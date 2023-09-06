---
desc: Mortality and recurrence in medically operable endometrial cancer
rows: 74
cols: 4
ext: txt
---

### Description

Endometrial adenocarcinoma is the most common gynecologic cancer in the United States.  The standard treatment is surgery to remove the tumor, often followed by radiation therapy.  Patients with serious comorbidities such as diabetes and cardiovascular disease may be medically inoperable -- surgery would be too risky to pursue as a treatment option.

This study focused on medically inoperable cases of endometrial adenocarcinoma who were treated with radiation therapy only.  The data comes from a consortium of five academic cancer centers.  Follow-up data on 74 women was available from the time of diagnosis until the time of either death or the end of the study.  The cause of death was also recorded, as either having been caused by the endometrial adenocarcinoma itself, or having been due to other causes.  In addition to the time until death, we also have data on the time until recurrence of the cancer following radiation therapy.

### Variables

* `tDeath`: Follow-up time with respect to death (months)
* `sDeath`: Failure indicator for death, also specifying the cause of death, with "Disease" meaning death from endometrial adenocarcinoma (Censored, Disease, Other)
* `tRecur`: Follow-up time with respect to cancer recurrence (months)
* `sRecur`: Failure indicator for recurrence (1=recurrence)

### Reference

> Podzielinski I, Randall ME, Breheny PJ, Escobar PF, Cohn DE, Quick AM, Chino JP, Lopez-Acevedo M, Seitz JL, Zook JE, and Seamon LG (2012). Primary radiation therapy for medically inoperable patients with clinical stage I and II endometrial carcinoma. *Gynecologic Oncology*, **124**:36-41.
