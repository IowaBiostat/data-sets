---
desc: COVID-19 outcomes by state
rows: 51
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/covid-states/covid-states.txt')"
---

### Description

This dataset brings together state-level COVID-19 outcomes and measures of public health policy during the pre-vaccine phase of the pandemic, with the goal of examining whether differences in how states responded are associated with differences in overall mortality. During 2020, U.S. states adopted widely varying approaches to mitigation, ranging from relatively strict and prolonged restrictions to more limited intervention. This dataset brings these two measures to ask the simple but important question: do states that implement more stringent measures experience better outcomes than those that do not?

### Variables

* `state`: The 50 states, plus District of Columbia
* `stringency`: The average stringency index from January 1, 2020 to December 31, 2020, as determined by the Oxford COVID-19 Government Response Tracker (OxCGRT) coding system.
* `mortality`: Deaths from COVID per 100,000 residents over the calendar year 2020

### Reference

Policy data from:

* [Oxford COVID-19 Government Response Tracker (OxCGRT)](https://github.com/OxCGRT/USA-covid-policy) 

Outcome data from:

* [The New York Times](https://github.com/nytimes/covid-19-data)

The population data for each state (needed to determine per-capita outcomes) is from the U.S. Census Bureau.
