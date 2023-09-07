---
desc: Data from SUPPORT study to predict survival in critically ill patients
rows: 1227
cols: 22
ext: txt
---

### Description

These data come from a large, multi-hospital study of adult patients with critical, acute conditions such as acute respiratory failure and multiple organ system failure.  The primary outcome is time until death.  A variety of potentially useful predictors, both demographic and lab values, are available.  The primary goal of the study is to develop an algorithm for predicting survival in these patients.

### Dimensions

* 1227 observations
* 22 variables

### Variables

* `Death`: Death indicator
* `Time`: Time on study (days)
* `Age`: Age in years at beginning of study
* `NCom`: Number of comorbidities
* `Edu`: Education level (years of schooling completed)
* `Income`: (under $11k, $11-$25k, $25-$50k, >$50k)
* `Race`: (white, black, hispanic, asian, other)
* `HDay`: Number of days spent in the hospital prior to being admitted into the study.  For many patients, this is 1 - they were entered into the study at the beginning of their stay in the hospital.  Other patients, however, stayed in the hospital for days/week/months prior to their entry in the study.
* `MAP`: Mean arterial pressure (mm Hg)
* `WBC`: White blood cell count (thousands/mm<sup>3</sup>)
* `Pulse`: Heart rate (beats/minute)
* `Resp`: Breathing rate (breaths/minute)
* `Temp`: Temperature (degrees Celsius)
* `PAFI`: Ratio between the partial pressure of oxygen in arterial blood (PaO<sub>2</sub>) and the fraction of inspired oxygen (FiO<sub>2</sub>), PaO<sub>2</sub>/FiO<sub>2</sub>.
* `Alb`: Serum albumin (g/dL)
* `Bili`: Serum bilirubin (mg/dL)
* `Crea`: Serum creatine (mg/dL)
* `Sod`: Serum sodium
* `PH`: Arterial PH
* `Glucose`: Serum glucose (mg/dL)
* `BUN`: Blood urea nitrogen (mg/dL)
* `Urine`: Urine output (cc/day)

### Reference

I obtained the data from `http://biostat.mc.vanderbilt.edu`; the original publication is:

> Knaus WA et al. (1995) The SUPPORT prognostic model: Objective estimates of survival for seriously ill hospitalized adults.  *Annals of Internal Medicine*, **122**:191-203.
