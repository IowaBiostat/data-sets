---
desc: Sex and age at time of death for infants who died of SIDS (Seattle, 1973-1982)
rows: 16
cols: 2
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/sids/sids.txt')"
---

### Description

From 2 to 4 months old, babies begin their primary course of vaccinations.  This is also the peak age for sudden infant death syndrome (SIDS).  The timing of these two events has led some people to believe they might be related.

The original data set was compiled by physicians at the Group Health Cooperative (GHC) of Puget Sound and contains information on all SIDS deaths among GHC patients from 1972 to 1983.  This data set, `sids.txt` is a subset of that data, containing records only for infants who died following their first diphtheria-tetanus-pertussis (DTP) immunization.

Note: The original study attempted to investigate the relationship between DTP exposure and SIDS.  Obviously, you cannot investigate that relationship in this subset, as all records in this subset have the same DTP exposure.

### Variables

* `Sex`: Male/Female (M, F)
* `DeathAge`: Age at death (days)

### Reference

> Walker AM, Jick H, Perera DR, Thompson RS, and Knauss TA. (1987).  Diphtheria-tetanus-pertussis immunization and sudden infant death syndrome.  *American Journal of Public Health*, **77**: 945-951.
